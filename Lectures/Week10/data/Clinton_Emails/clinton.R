# Network Analysis 
# Clinton Emails

library(jsonlite)      # read in the JSON data from the API
library(dplyr)         # data munging
library(igraph)        # work with graphs in R
library(ggnetwork)     # devtools::install_github("briatte/ggnetwork")
library(intergraph)    # ggnetwork needs this to wield igraph things
library(ggrepel)       # fancy, non-ovelapping labels
library(svgPanZoom)    # zoom, zoom
library(SVGAnnotation) # to help svgPanZoom; it's a bioconductor package
library(DT)            # pretty tables

# Get the data from the WSJ API 

# if (!file.exists("clinton_emails.rda")) {
#    clinton_emails <- fromJSON("http://graphics.wsj.com/hillary-clinton-email-documents/api/search.php?subject=&text=&to=&from=&start=&end=&sort=docDate&order=desc&docid=&limit=27159&offset=0")$rows
# save(clinton_emails, file="clinton_emails.rda") 
# }

# Read the data
load("clinton_emails.rda")

# Make into tidy data frame
clinton_emails <- dplyr::as_data_frame(clinton_emails)

# Trim a small number of emails with many recipients
clinton_emails %>% 
dplyr::mutate(from=trimws(from),
       to=trimws(to)) %>% 
  dplyr::filter(from != "") %>% 
  dplyr::filter(to != "") %>% 
  dplyr::filter(!grepl(";", from)) %>% 
  dplyr::filter(!grepl(";", to)) -> clinton_emails

# Making a graph object
# using the “from” and “to” characteristics
# You can add extra data to nodes & edges, but this will do just fine for this example.
gr <- graph_from_data_frame(clinton_emails[,c("from", "to")], directed=FALSE)
gr  ## Hmmh. pretty big and lots of info.

# Who are the "stars"?
# Take a look at the degree centrality so we can properly size the nodes for the final vis
# Here some general info on centrality: http://www.analytictech.com/mb119/chapter5.htm
V(gr)$size <- centralization.degree(gr)$res

datatable(arrange(data_frame(person=V(gr)$name, centrality_degree=V(gr)$size), desc(centrality_degree)))

# How many connections between the same nodes?
datatable(arrange(ungroup(count(clinton_emails, from, to)), desc(n)))

# There are a large number of redundant edges (i.e. connection between nodes)
# igraph::simplify(): A simplified graph contains only a single edge between two nodes. The simplification step can compute summary statistics for the combined edges, for example the sum of edge weights.
#  Let's combine them by simplifying the graph and storing the sum of the edge connections (it will be stored in the weight attribute as long as there is an existing weight attribute).

E(gr)$weight <- 1
g <- simplify(gr, edge.attr.comb="sum")

## Visualize

# to visualize the network, we need to pick a layout and one of the standards is Fruchterman–Reingold
# We also set a random seed since you'll get a different orientation each time if you don't (the graph algorithm starts at a random point). Then we tell ggnetwork to use the FR algorithm to do it's work.

set.seed(2103)
dat <- ggnetwork(g, layout="fruchtermanreingold", arrow.gap=0, cell.jitter=0)
dat <- ggnetwork(g)


# Not really needed. But ggnetwork was giving me an error message and this was a quick workaround.
library(readr)
write_csv(dat,"dat.csv")
dat <- read_csv("dat.csv")
dat <- dplyr::as_data_frame(dat)

# geom_edges + geom_nodes understand the attribute data associated with those graph components, so you can play with how you want various aesthetics mapped.

(gg1 <- ggplot() +
  geom_edges(data=dat, 
             aes(x=x, y=y, xend=xend, yend=yend)) +
  geom_nodes(data=dat,
             aes(x=x, y=y, xend=xend, yend=yend)) )


## Adding labels for top 50 central actors
### we add a "repelling label" to the nodes with higher centrality so it's easier to see who the "top talkers" are.
(gg2 <- gg1 +
  geom_label_repel(data=unique(dat[dat$size>50,c(1,2,5)]),
                   aes(x=x, y=y, label=vertex.names), 
                   size=2, color="#8856a7"))

## Remove background / axes etc. 
(gg3 <- gg2 +   
    theme_blank() +
    theme(legend.position="none")  )

## Adjust design of the edges (i.e. connections)

(gg4 <- ggplot() +
  geom_edges(data=dat, 
             aes(x=x, y=y, xend=xend, yend=yend),
             color="grey50", curvature=0.1, size=0.15, alpha=1/2) +
  geom_nodes(data=dat,
             aes(x=x, y=y, xend=xend, yend=yend)) +
  geom_label_repel(data=unique(dat[dat$size>50,c(1,2,5)]),
                   aes(x=x, y=y, label=vertex.names), 
                   size=2, color="#8856a7") +
  theme_blank() +
  theme(legend.position="none") )

## Adjust design of the nodes (i.e. actors/people)
### Size by centrality, make slightly transparent bc. of 
### overplotting

(gg5 <- ggplot() +
    geom_edges(data=dat, 
               aes(x=x, y=y, xend=xend, yend=yend),
               color="grey50", curvature=0.1, size=0.15, alpha=1/2) +
    geom_nodes(data=dat,
               aes(x=x, y=y, xend=xend, yend=yend, size=sqrt(size)),
               alpha=1/3) +
    geom_label_repel(data=unique(dat[dat$size>50,c(1,2,5)]),
                     aes(x=x, y=y, label=vertex.names), 
                     size=2, color="#8856a7") +
    theme_blank() +
    theme(legend.position="none") )

## Hard to explore bc. static. 
## Let's add panning and zooming via SVG.

svgPanZoom(svgPlot(show(gg5), height=15, width=15), 
           # width="100%",
           controlIconsEnabled=TRUE)

## Not bad, but not interactive.


###########
###########
# Adding interactivity

### networkD3
library(networkD3)

# Use igraph to make the graph and find membership
wc <- cluster_walktrap(g)  # find "communities"
members <- membership(wc)

# Convert igraph object to object suitable for networkD3
clinton_d3 <- igraph_to_networkD3(g, group=members)

# Create force directed network plot
fn1 <- forceNetwork(Links = clinton_d3$links, Nodes = clinton_d3$nodes, 
             Source = 'source', Target = 'target', 
             NodeID = 'name', Group = 'group', 
             )

# Export to HTML file
fn1 %>% saveNetwork(file = 'clinton_fn1.html')

# Color by groups
# - not sure what they mean, just for the visualization practice
fn2 <- forceNetwork(Links = clinton_d3$links, Nodes = clinton_d3$node,
                  Source = 'source', Target = 'target', 
                  NodeID = 'name', 
                  Group = 'group', # color nodes by group calculated earlier
                  charge = -50, # node repulsion
                  linkDistance = 20,
                  zoom = T, 
                  opacity = 1,
                  fontSize=24) 
fn2 %>% saveNetwork(file = 'clinton_fn2.html')

# Add centrality measure and map to node size
clinton_d3$nodes$size <- centralization.degree(g)$res
clinton_d3$nodes$stars <- clinton_d3$nodes$size>10

fn3 <- forceNetwork(Links = clinton_d3$links, Nodes = clinton_d3$node,
                    Source = 'source', Target = 'target', 
                    NodeID = 'name', 
                    Group = 'stars', # color nodes by size
                    charge = -50, # node repulsion
                    Nodesize = 'size',
                    linkDistance = 20,
                    zoom = T, 
                    opacity = 1,
                    fontSize=24) 
fn3 %>% saveNetwork(file = 'clinton_fn3.html')

### Change Background Color and Edge Color

library(htmltools)
fn4 <-
  tagList(
    forceNetwork(Links = clinton_d3$links, Nodes = clinton_d3$node,
                 Source = 'source', Target = 'target', 
                 NodeID = 'name', 
                 Group = 'stars', # color nodes by size
                 charge = -50, # node repulsion
                 Nodesize = 'size',
                 linkDistance = 20,
                 zoom = T, 
                 opacity = 1,
                 fontSize=24),
    tags$script(
      '
      document.body.style.backgroundColor = "#000000"
      '      
    )
  )
save_html(fn4, file = 'clinton_fn4.html' )

## Add some clicking interactivity  "clickAction"
# with a simple click action - make the circles bigger when clicked
MyClickScript <- 
  ' d3.select(this).select("circle")
.transition().duration(750).attr("r", 40)
'

fn5 <- forceNetwork(Links = clinton_d3$links, Nodes = clinton_d3$node,
                    Source = 'source', Target = 'target', 
                    NodeID = 'name', 
                    Group = 'stars', # color nodes by size
                    charge = -50, # node repulsion
                    Nodesize = 'size',
                    linkDistance = 20,
                    zoom = T, 
                    opacity = 1,
                    fontSize=24,
                    clickAction = MyClickScript) 
fn5 %>% saveNetwork(file = 'clinton_fn5.html')