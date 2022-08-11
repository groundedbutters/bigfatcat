Designing visualizations
================
Thomas Brambor
2018/02/05

class: left, bottom background-image: url(images/road\_fall.jpg) background-size: 100% background-position: 0% 0%

Roadmap for Today
=================

1.  *Gestalt principles* - Grouping items in a visualization

2.  gplot2 continued:
    -   additial geoms()
    -   changing the details of plots
3.  some design principles from Tufte with application in ggplot2

------------------------------------------------------------------------

class: inverse, bottom, middle background-image: url(images/cat\_computer.jpg)

Some Administrative Stuff
=========================

------------------------------------------------------------------------

Assignment 1
============

-   Assignement 1 will be up this week and due **on Monday, February 12**.
-   You will be asked to use `ggplot2()` commands for some exploratory and explanatory graphs and add some simple interactivity to these graphs (*lecture next week*)
-   First stop for **general coding questions** should be [stackoverflow](http://stackoverflow.com/questions/tagged/ggplot2) + [ggplot manual](http://docs.ggplot2.org/) (online) + and the piazza class forum
-   Next stop: the TAs and my office hours.
-   Submission via GitHub

------------------------------------------------------------------------

class: inverse, left, middle background-image: url(images/final\_project\_movie.jpg) background-size: 50% background-position: 50% 0%

------------------------------------------------------------------------

class: left background-image: url(images/above\_the\_clouds.jpg) background-size: 100% background-position: 0% 0%

Final Project - Description
===========================

*From the syllabus:*

> Final group project (30%): A final **group project (3-4 students)** presented in the form of a **website** and accompanying **project book**. You will analyze data of your own choosing and report the results using (one or more of) 1. static images based on `ggplot2`, 2. maps using geospatial data, 3. visualizations of text analyses 4. network visualizations

--

> AND

> prepare a **hosted, interactive display of some of your visualizations**.

------------------------------------------------------------------------

background-image: url(images/data-management-cartoon.png) background-size: 48% background-position: 100% 100%

Final Project - Data
====================

For the final project, your data should:

1.  be a **larger dataset to allow analysis in different forms**
2.  contain at best two of the following elements
    -   some geographic identifiers (cities, addresses. lat-long etc.) to allow mapping
    -   some text to allow simpe text analyses
    -   contain a network matrix (or item relationships) to plot visual networks

--

Preference is for data that you either
put together yourself from existing datasets,
and/or using some API to collect the data you
need from an online source (e.g. Twitter).

------------------------------------------------------------------------

background-image: url(images/data-visualization-example-graph.png) background-size: 70% background-position: 100% 100%

Final Project - Output
======================

-   final output should be something that you could (if you choose to) use as a portfolio for job applications etc. to show your skills
-   for that, it needs to be visually appealing, informative, and (partially) interactive.

------------------------------------------------------------------------

Final Project - Hypothetical Example
====================================

-   **Title:** Unhealthy habits - Bad diets are the root of the obesity epidemic
-   **Abstract:** obesity epidemic in the U.S. ... bad diets are to blame ... explore how have diets changed over time ... how are diets related to socio-economic factors etc.
-   **Data**:
    -   adult and changed obesity rates in the [U.S.(CDC)](https://www.cdc.gov/obesity/data/adult.html) and the [World (WHO)](http://www.who.int/gho/ncd/risk_factors/overweight/en/) (pair with geographic info for mapping)
    -   Pew Research Center’s [surveys on food and nutrition attitudes](http://www.pewinternet.org/2016/12/01/the-new-food-fights/) and how [diets have changed](http://www.pewresearch.org/fact-tank/2016/12/13/whats-on-your-table-how-americas-diet-has-changed-over-the-decades/)
    -   Content of Recipes changed over time (text analysis of recipes, extracting measures)
    -   [Spread of Obesity in a Large Social Network](http://www.nejm.org/doi/full/10.1056/NEJMsa066082#t=article)

------------------------------------------------------------------------

class: center

Final Project - Hypothetical Example
====================================

<img src="images/healthydiet_combined1.png" width="95%" />

------------------------------------------------------------------------

class: center

Final Project - Hypothetical Example
====================================

<img src="images/healthydiet_combined2.png" width="65%" />

------------------------------------------------------------------------

class: center, middle

Final Project - Hypothetical Example
====================================

<img src="images/healthydiet_combined3.png" width="100%" />

------------------------------------------------------------------------

class: left

Final Project - Process Book
============================

Part of the project is a **process book** in which you note (as you go along) how your thinking developed, perhaps including some plots that you later discarded, some (handwritten) sketches of how you imagine the final design etc.

<img src="images/healthydiet_process_plan.png" width="100%" />

------------------------------------------------------------------------

background-image: url(images/team\_4.jpg) background-size: 70% background-position: 100% 100%

Final Project on GitHub
=======================

As with remaining assignments, I want you to **use GitHub for working on and submitting the assignment**.

In fact, since multiple people will be working in a group, this will be the ideal way to **keep track of your work** and allow the teaching staff to interact with you easily on suggestions, improvements, and coding issues.

Note: There is a **maximum of 4 members in a group**.

------------------------------------------------------------------------

background-image: url(images/project\_trump\_tweets\_02.png) background-size: 50% background-position: 50% 95%

Great example for a succesful project
=====================================

-   [Language and the 2016 US Presidential Election](https://thebestdatavisualizationproject.shinyapps.io/team_america/) by Mike Jaron, Sam Gass, Jack Holder & Brandon Wolff

------------------------------------------------------------------------

Great example for a succesful project
=====================================

.pull-left\[

<img src="images/project_trump_tweets_03.png" width="100%" />

<img src="images/project_trump_tweets_04.png" width="100%" />

\]

.pull-right\[

<br> <br> <br>

<img src="images/project_trump_tweets_05.png" width="100%" />

Other presentation formats: [beamer](http://rmarkdown.rstudio.com/beamer_presentation_format.html),

------------------------------------------------------------------------

class: inverse background-image: url(images/whisper.jpg) background-size: 50% background-position: 100% 100%

Did you know? Slides in R markdown
==================================

-   [ioslides](http://rmarkdown.rstudio.com/ioslides_presentation_format.html) are HTML5 slides. Really simple format but also somewhat limited in terms of cusomization.

-   [Xaringan](https://slides.yihui.name/xaringan/) based on remark.js. Especially great for picture rich slides. The slides for **todays lecture** are made that way. Currently my favorite of the options.

-   The [reveal.js](https://revealjs.com/) package offers good locking slides, snazzy slide transitions, and lots of customization. The slides for the **lectures in week 1 and 2** were created that way.

-   Used to Latex? There is [Beamer](http://rmarkdown.rstudio.com/beamer_presentation_format.html) for slides in R Markdown as well.

------------------------------------------------------------------------

class: inverse, bottom, center background-image: url(images/gestalt\_logostyle.jpeg) background-size: 100%

Gestalt Principles
==================

??? Source: <https://medium.muz.li/gestalt-principles-in-ui-design-6b75a41e9965>

------------------------------------------------------------------------

What are Gestalt Principles?
============================

Gestalt principles describe **how our mind organizes individual elements into groups.**

--

.pull-left\[

### ge·stalt, *n.* \[ɡəˈʃtalt\] = shape/form (German).

> An organized whole that is perceived as more than the sum of its parts.

\]

.pull-right\[

<img src="images/soccer_ball_gestalt.jpg" width="100%" />

\]

------------------------------------------------------------------------

background-image: url(images/gestalt\_icon\_simplicity.png) background-size: 25% background-position: 95% 5%

Simplicity
==========

The **human brain loves simplicity** and it tends to process simple patterns -- patterns that are regular, even, and orderly -- faster than patterns that are more complex.

<img src="images/gestalt_simplicity.png" width="100%" />

------------------------------------------------------------------------

background-image: url(images/gestalt\_icon\_similarity.png) background-size: 25% background-position: 95% 5%

Similarity
==========

In German: *Prägnanz* (german: pithiness) = brief, forceful, and meaningful in expression

<img src="images/gestalt_ware2012_similarity.png" width="70%" /> <small><small>Ware, C. (2012)</small></small>

--

Facilitate comprehension by ensuring that **associated items in your graphics have similar properties and a common structure**.

**Arrange data logically and systematically** whenever possible.

When using a grid layout, **consider using color and texture to "connect" the rows**.

------------------------------------------------------------------------

background-image: url(images/gestalt\_icon\_proximity.png) background-size: 25% background-position: 95% 5%

Proximity
=========

Elements **close to each other** are perceived as part of **one group**.

<img src="images/gestalt_ware2012_proximity.png" width="100%" />

<small><small>Ware, C. (2012)</small></small>

--

Place **symbols and text representing related information close together**.

------------------------------------------------------------------------

background-image: url(images/gestalt\_icon\_connectedness.png) background-size: 15% background-position: 95% 5%

Connectedness
=============

When elements are connected by a line, it is easy to see they belong together.

<img src="images/gestalt_ware2012_connectedness.png" width="50%" /> <small><small>Ware, C. (2012)</small></small>

To show **relationships between things**, consider **linking** graphical representations of data objects using **lines, arrows, or ribbons of color**.

------------------------------------------------------------------------

background-image: url(images/gestalt\_icon\_continuity.png) background-size: 15% background-position: 95% 5%

Continuity
==========

Objects that are presented in a continuous pattern are grouped together by the mind. Smooth lines help to make a unified figure.

![](images/gestalt_ware2012_continuity.png)

<small><small>Ware, C. (2012)</small></small>

--

Use **visual elements that are smooth and continuous**, rather than ones that contain abrupt changes in direction, in order **to construct visual entities out of visual elements**.

------------------------------------------------------------------------

background-image: url(images/gestalt\_icon\_continuity.png) background-size: 15% background-position: 95% 5%

Continuity
==========

![](images/gestalt_wong2010_alignment1.png) ![](images/gestalt_wong2010_alignment2.png)

<small><small> Wong, B. (2010). Points of view: Design of data figures. Nature Methods, 7(9), 665–665. <https://doi.org/10.1038/nmeth0910-665> </small></small>

(1): Graphics and text used as vertices and edges of geometric shapes.
(2/3): Geometric and curvilinear shapes used as flexible guides to align content.

------------------------------------------------------------------------

background-image: url(images/gestalt\_icon\_closure.png) background-size: 15% background-position: 95% 5%

Completion
==========

.pull-left\[

<img src="images/gestalt_wong2010_completion.png" width="100%" />

<small><small> Wong, B. (2010). </small></small>

\]

.pull-right\[

We automatically and spontaneously **perceive a full circle behind the square**.

We **fill in voids with visual cues found elsewhere on the page**. This means every element on a page affects how we perceive every other element.

\]

------------------------------------------------------------------------

background-image: url(images/gestalt\_icon\_closure.png) background-size: 15% background-position: 95% 5%

Completion
==========

.pull-left\[

<img src="images/gestalt_wong2010_completion2.png" width="100%" />

<small><small> Wong, B. (2010). </small></small>

\]

.pull-right\[

<br> <br>

**Use our tendency to visually complete shapes to forgo the extraneous** lines, boxes, bullets and other **graphical elements that tend to clutter our presentations**. \[see also Tufte's recommendations here\]

\]

------------------------------------------------------------------------

background-image: url(images/gestalt\_icon\_figureground.png) background-size: 15% background-position: 95% 5%

Figure - Ground
===============

<img src="images/gestalt_figure_ground_maps.jpg" width="50%" />

A ***figure*** is something objectlike that is **perceived as being in the foreground**. <br><br> The ***ground* is whatever lies behind the figure**. <br><br> In general, smaller components of a pattern tend to be perceived as objects.

------------------------------------------------------------------------

background-image: url(images/gestalt\_icon\_figureground.png) background-size: 15% background-position: 95% 5%

Figure - Ground
===============

.pull-left\[

<img src="images/gestalt_figure_ground_vase.jpg" width="100%" />

\]

--

.pull-right\[

<br> <br>

When **figure and ground are about equally matched, we don't know what to focus on.** \]

------------------------------------------------------------------------

background-image: url(images/gestalt\_icon\_commonfate.png) background-size: 15% background-position: 95% 5%

Common Fate
===========

Humans perceive **visual elements that move in the same speed and/or direction as parts of a single group** (think a flock of birds).

<img src="images/gestalt_commonfate_airplanes.jpg" width="95%" />

------------------------------------------------------------------------

class: inverse background-image: url(images/gestalt\_principles\_overview.png) background-size: 75% background-position: 50% 0%

???

Source: <https://www.designcontest.com/blog/designing-with-gestalt-principles/>

------------------------------------------------------------------------

Gestalt Principles Overview
===========================

-   **similarity**: things that look like each other (size, color, shape) are related
-   **proximity**: things that are visually close to each other are related
-   **connection**: things that are visually connected are related
-   **continuity**: we complete hidden objects into simple, familiar shapes
-   **closure**: we see incomplete shapes as complete
-   **figure / ground**: elements are perceived as either figures or background
-   **common fate**: elements with the same moving direction are perceived as a unit

------------------------------------------------------------------------

Takeaways: Gestalt principles
=============================

We can use these Gestalt principles to highlight patterns that are important, and downplay other patterns.

-   **Similarity**: Keep it simple. Arrange data logically wherever possible. Use similar characteristics (color, size, shape, etc.) to establish relationships and to encourage groupings of objects.
-   **Proximity**: Know what your chart’s information priority is, and then create groupings through proximity to support that priority.
-   **Connection**: Use connected lines, shapes, and color regions as visual guides.
-   **Continuity**: Arrange objects in a line to facilitate grouping and comparison.
-   **Completion**: Use our tendency to visually complete shapes to reduce clutter.
-   **Figure/Ground**: Ensure there is enough contrast between your foreground and background so that charts and graphs are more legible.
-   **Common Fate**: Use direction and/or movement to establish or negate relationships.

<!--- Advice partially from: http://sixrevisions.com/usability/data-visualization-gestalt-laws/ -->

------------------------------------------------------------------------

Further Reading
===============

[*Gestalt principles in UI design*](https://medium.muz.li/gestalt-principles-in-ui-design-6b75a41e9965) by Eleana Gkogka

Wong, B. (2010a). Points of View: Gestalt principles (Part 1). Nature Methods, 7(11), 863–863. <https://doi.org/10.1038/nmeth1110-863>

Wong, B. (2010b). Points of View: Gestalt principles (Part 2). Nature Methods, 7(12), 941–941. <https://doi.org/10.1038/nmeth1210-941>

Ware, C. (2012). Information Visualization, Third Edition: Perception for Design (3 edition). Waltham, MA: Morgan Kaufmann. pp. 181--198

------------------------------------------------------------------------

class: inverse, bottom, middle background-image: url(images/ggplot2\_pencil.jpg)

Back to ggplot2
===============

------------------------------------------------------------------------

Box plots and Dot Plots
=======================

-   For some plots we have a specific `geom()`. E.g. box plots are created with `geom_boxplot`.
-   For other plots we can use the geoms we already know. E.g. for dot plots we can use `geom_point()`
-   overall 37 geoms, but good to know a few. Use the [ggplot2 cheat sheet](https://www.rstudio.com/wp-content/uploads/2016/11/ggplot2-cheatsheet-2.1.pdf).

--

Examples: Geoms and Type of Plot
================================

| Name of Plot         | Geom    | Other Features            |
|----------------------|---------|---------------------------|
| scatterplot          | point   |                           |
| bubblechart          | point   | size mapped to a variable |
| barchart             | bar     |                           |
| box-and-whisker plot | boxplot |                           |
| line chart           | line    |                           |

------------------------------------------------------------------------

Recall: A New Dataset - Organ Donors
====================================

``` r
organs <- read_csv("data/organ_donors.csv")

dim(organs)
```

    ## [1] 238  21

``` r
head(organs)
```

    ## # A tibble: 6 x 21
    ##      X1 country    year donors   pop pop.dens   gdp gdp.lag health
    ##   <int> <chr>     <int>  <dbl> <int>    <dbl> <int>   <int>  <dbl>
    ## 1     1 Australia    NA   NA   17065    0.220 16774   16591   1300
    ## 2     2 Australia  1991   12.1 17284    0.223 17171   16774   1379
    ## 3     3 Australia  1992   12.4 17495    0.226 17914   17171   1455
    ## 4     4 Australia  1993   12.5 17667    0.228 18883   17914   1540
    ## 5     5 Australia  1994   10.2 17855    0.231 19849   18883   1626
    ## 6     6 Australia  1995   10.2 18072    0.233 21079   19849   1737
    ## # ... with 12 more variables: health.lag <dbl>, pubhealth <dbl>,
    ## #   roads <dbl>, cerebvas <int>, assault <int>, external <int>,
    ## #   txp.pop <dbl>, world <chr>, opt <chr>, consent.law <chr>,
    ## #   consent.practice <chr>, consistent <chr>

``` r
## For convenience, let R know year is a time measure.
organs$year <- as.Date(strptime(organs$year, format="%Y"))
```

???

<!--- 
organs.url <- "https://raw.githubusercontent.com/socviz/soc880/gh-pages/data/organ-procurement.csv"
organs.data <- read.csv(url(organs.url), row.names=1)
-->

------------------------------------------------------------------------

Recall: Average by group
========================

``` r
by.country <- organs %>% 
  group_by(consent.law, country) %>%
  summarize(donors=mean(donors, na.rm = TRUE))
by.country
```

    ## # A tibble: 17 x 3
    ## # Groups:   consent.law [?]
    ##    consent.law country        donors
    ##    <chr>       <chr>           <dbl>
    ##  1 Informed    Australia        10.6
    ##  2 Informed    Canada           14.0
    ##  3 Informed    Denmark          13.1
    ##  4 Informed    Germany          13.0
    ##  5 Informed    Ireland          19.8
    ##  6 Informed    Netherlands      13.7
    ##  7 Informed    United Kingdom   13.5
    ##  8 Informed    United States    20.0
    ##  9 Presumed    Austria          23.5
    ## 10 Presumed    Belgium          21.9
    ## 11 Presumed    Finland          18.4
    ## 12 Presumed    France           16.8
    ## 13 Presumed    Italy            11.1
    ## 14 Presumed    Norway           15.4
    ## 15 Presumed    Spain            28.1
    ## 16 Presumed    Sweden           13.1
    ## 17 Presumed    Switzerland      14.2

------------------------------------------------------------------------

Ordered dotplot
===============

We know that order helps visual perception. Get your factors (the categorical variable) in order when it makes sense.

``` r
p <- ggplot(by.country, aes(x=donors, y=reorder(country, donors), 
                            color=consent.law))
p + geom_point(size=3)
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-19-1.png)

------------------------------------------------------------------------

Improve the labels
==================

``` r
p + geom_point(size=3) +
    labs(x="Donor Procurement Rate (per million population)",
         y="", color="Consent Law") +
    theme(legend.position="top")
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-20-1.png)

------------------------------------------------------------------------

Dotplots
========

.pull-left\[

-   dotplots are useful to get a summary of one-dimensional categorical data
-   Often better than bar or column charts.
-   Keeping the categories on the y-axis is often a good idea.
-   They work also well to summarize model results with error ranges.

\]

.pull-right\[

<img src="images/dotplot_nytimes_recession_earnings.jpg" width="100%" />

\]

------------------------------------------------------------------------

Boxplot
=======

``` r
ggplot(data=organs, aes(x=country,y=donors)) +
  geom_boxplot() + #<<
  coord_flip() +   #<<
  labs(x="", y="Donor Procurement Rate")
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-22-1.png)

------------------------------------------------------------------------

Boxplot - Order helps
=====================

``` r
ggplot(data=organs, 
       aes(x=reorder(country, donors, na.rm=TRUE), #<<
                y=donors)) +
  geom_boxplot() + coord_flip() +
  labs(x="", y="Donor Procurement Rate")
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-23-1.png)

------------------------------------------------------------------------

Boxplot
=======

``` r
ggplot(data=organs,aes(x=reorder(country, donors, na.rm=TRUE),y=donors)) +
  geom_boxplot(aes(fill=consent.law)) + #<<
  coord_flip() + labs(x = "", y = "Donor Procurement Rate")
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-24-1.png)

------------------------------------------------------------------------

Boxplot - and some jitter (too much?)
=====================================

``` r
ggplot(data=organs,aes(x=reorder(country, donors, na.rm=TRUE),y=donors)) + 
 geom_boxplot(aes(fill=consent.law), outlier.colour = "transparent", 
               alpha=0.3) +
 coord_flip() + labs(x= "", y= "Donor Procurement Rate") +
 geom_jitter(shape=21, aes(fill=consent.law), color="black", #<<
              position = position_jitter(w=0.1)) #<<
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-25-1.png)

------------------------------------------------------------------------

1-D point summaries
===================

``` r
p <- ggplot(data=organs, aes(x=reorder(country, donors, na.rm=TRUE), y=donors)) 
p + 
  geom_point(aes(color=consent.law)) + #<<
  coord_flip() + labs(x="", y="Donor Procurement Rate")
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-26-1.png)

------------------------------------------------------------------------

Add a little jitter
===================

``` r
ggplot(data=organs,aes(x=reorder(country, donors, na.rm=TRUE), y=donors)) +
  geom_jitter(aes(color=consent.law)) + #<<
  coord_flip() + labs(x="", y="Donor Procurement Rate")
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-27-1.png)

------------------------------------------------------------------------

Fine-tune the jittering
=======================

``` r
ggplot(data=organs,aes(x=reorder(country, donors,na.rm=TRUE),y=donors)) +
  geom_jitter(aes(color=consent.law),
              position = position_jitter(width=0.15)) + #<<
    coord_flip() +
    labs(x="", y="Donor Procurement Rate") +
    theme(legend.position="top")
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-28-1.png)

------------------------------------------------------------------------

A few more useful geoms
=======================

``` r
p + geom_point() + ggtitle("point")
p + geom_text() + ggtitle("text")
p + geom_bar(stat = "identity") + ggtitle("bar") 
p + geom_tile() + ggtitle("raster")
p + geom_line() + ggtitle("line")
p + geom_area() + ggtitle("area")
p + geom_path() + ggtitle("path")
p + geom_polygon() + ggtitle("polygon")
```

<img src="images/other_geoms1.png" width="60%" /> <img src="images/other_geoms2.png" width="60%" />

Familiarize yourself with these options in `ggplot2()`.

------------------------------------------------------------------------

Bar charts - Position Adjustments
=================================

-   We already learned some adjustment to postions, namely `position_jitter()` for points
-   For bar graphs, these position adjustments are important as well:
    -   `position_stack()`: stack overlapping bars (or areas) on top of each other.
    -   `position_fill()`: stack overlapping bars, scaling so the top is always at 1.
    -   `position_dodge()`: place overlapping bars (or boxplots) side-by-side.

------------------------------------------------------------------------

Bar charts - Position Adjustments
=================================

Try these out yourself.

``` r
library(ggthemes)
dplot <- ggplot(diamonds, aes(color, fill = cut)) + 
  xlab(NULL) + ylab(NULL) + theme(legend.position = "none")
# position stack is the default for bars, so `geom_bar()` 
# is equivalent to `geom_bar(position = "stack")`.
dplot + geom_bar()
dplot + geom_bar(position = "fill")
dplot + geom_bar(position = "dodge")
```

<img src="images/barcharts_position.png" width="100%" />

Which one is the easiest to digest for a viewer? (re: elementary perceptual tasks)

------------------------------------------------------------------------

class: inverse, bottom, center background-image: url(images/minard\_no\_box.png) background-size: 100% background-position: 0% 30%

Channeling Edward Tufte
=======================

------------------------------------------------------------------------

class: top, right background-image: url(images/tufte\_drawing.png) background-size: 60% background-position: 0% 100%

Clutter and confusion are not attributes of information, they are failures of design.
=====================================================================================

**Edward Tufte**

------------------------------------------------------------------------

<img src="images/monstrous_costs.jpg" width="100%" />

------------------------------------------------------------------------

class: center, middle

But: Which is really better?
============================

<img src="images/monstrous_costs.jpg" width="50%" /> <img src="images/monstrous_costs_plain.jpg" width="49%" />

??? Source: Nigel Holmes. "Useful Junk? The Effects of Visual Embellishment on Comprehension and Memorability of Charts".

<http://hci.usask.ca/publications/view.php?id=173>

------------------------------------------------------------------------

class: center, middle

Tufte’s Integrity (and Design) Principles
=========================================

<img src="images/tip.png" width="10%" />

Strive for **graphical integrity**. Visual representations of data must tell the **truth**.
-------------------------------------------------------------------------------------------

------------------------------------------------------------------------

class: center background-image: url(images/tip.png) background-size: 10% background-position: 0% 0%

The **size of the graphics effect** should be directly **proportional** to the **numerical quantities**.
--------------------------------------------------------------------------------------------------------

<img src="images/Tufte2001_p57_fueleconomy.png" width="100%" />

???

First principle: The representation of numbers, as physically measured on the surface of the graph itself, should be directly proportional to the numerical quantities represented.

<small><small>Tufte (2001), p.57</small></small>

------------------------------------------------------------------------

class: center background-image: url(images/tip.png) background-size: 10% background-position: 0% 0%

**Clear, detailed, and thorough labeling and approriate scales.**
-----------------------------------------------------------------

.pull-left\[ <img src="images/Tufte2001_p60_nobel1.png" width="90%" />\]

--

.pull-right\[

<img src="images/Tufte2001_p60_nobel2.png" width="100%" /> \]

???

Second principle: Clear, detailed and thorough labeling should be used to defeat graphical distortion and ambiguity. Write out explanations of the data on the graph itself. Label important events in the data.

------------------------------------------------------------------------

class: center background-image: url(images/tip.png) background-size: 10% background-position: 0% 0%

**Show data variation**, not design variation.
----------------------------------------------

<img src="images/Tufte_mining.jpg" width="100%" />

???

Third Principle: Show data variation, not design variation.

<small>Tufte (2001), p.61</small>

------------------------------------------------------------------------

class: center background-image: url(images/tip.png) background-size: 10% background-position: 0% 0%

In time-series displays of money, **deﬂated and standardized units of monetary measurement** are nearly always better than nominal units.
-----------------------------------------------------------------------------------------------------------------------------------------

<img src="images/Tufte_price_of_crude_oil.gif" width="75%" />

???

Fourth Principle: In time-series displays of money, deﬂated and standardized units of monetary measurement are nearly always better than nominal units.

Fifth Principle: The number of information carrying (variable) dimensions depicted should not exceed the number of dimensions in the data. Graphics must not quote data out of context.

------------------------------------------------------------------------

class: center background-image: url(images/tip.png) background-size: 10% background-position: 0% 0%

**Maximize the data-ink ratio.**
--------------------------------

<img src="images/tufte2001_datainkratio.jpg" width="100%" />

------------------------------------------------------------------------

class: center background-image: url(images/tip.png) background-size: 10% background-position: 0% 0%

**Maximize the data-ink ratio.**
--------------------------------

<img src="images/tufte_data_ink.jpg" width="100%" />

------------------------------------------------------------------------

class: center background-image: url(images/tip.png) background-size: 10% background-position: 0% 0%

**Maximize the data-ink ratio.**
--------------------------------

<img src="images/tufte2001_redundant.png" width="100%" />

------------------------------------------------------------------------

class: center background-image: url(images/tip.png) background-size: 10% background-position: 0% 0%

**Avoid chart junk **
---------------------

.pull-left\[ <img src="images/Tufte_worst_graphic.jpg" width="80%" />\]

.pull-right\[

This is according to Tufte possibly the **worst graph ever**:

*“A series of weird three-dimensional displays appearing in the magazine of American Education in the 1970’s delighted the connoisseurs of the graphically preposterous. Here ﬁve colors report, almost by happenstance, only 5 pieces of data (since the division within each adds to 100%). This may well be the worst graphic ever to ﬁnd its way into print.”*

<small>**chart junk**: The excessive and unnecessary use of graphical effects in graphs used to demonstrate the graphic ability of the designer rather than display the data.</small> \]

------------------------------------------------------------------------

class: center, middle background-image: url(images/tip.png) background-size: 10% background-position: 0% 0%

**Increase data density.**
--------------------------

### The proportion of the total size of the graph that is dedicated displaying data.

<img src="images/tufte2001_p161_datadensity.png" width="100%" />

------------------------------------------------------------------------

class: center, middle background-image: url(images/tip.png) background-size: 10% background-position: 0% 0%

**Increase data density.**
--------------------------

<img src="images/tufte2001_p161_datadensity_low.png" width="34%" /> <img src="images/tufte2001_p161_datadensity_high.png" width="65%" />

------------------------------------------------------------------------

class: center, middle background-image: url(images/abela\_what\_would\_you\_like\_to\_show.jpg) background-size: 80% background-position: 50% 50% background-color: \#EAEBED

???

Chart by Andrew Abela Source: <https://seec.areavoices.com/2017/05/08/spring-data-clean-up/>

------------------------------------------------------------------------

class: inverse, bottom, center background-image: url(images/Tufte\_black\_sample\_plot.png) background-size: 80% background-color: \#000000 background-position: 50% 20%

Applying Tufte's Principles with ggplot2
========================================

??? Source:

See data below. Black version of graph used for background.

``` r
theme_black = function(base_size = 12, base_family = "") {
 
  theme_grey(base_size = base_size, base_family = base_family) %+replace%
 
    theme(
      # Specify axis options
      axis.line = element_blank(),  
      axis.text.x = element_text(size = base_size*0.8, color = "white", lineheight = 0.9),  
      axis.text.y = element_text(size = base_size*0.8, color = "white", lineheight = 0.9),  
      axis.ticks = element_line(color = "white", size  =  0.2),  
      axis.title.x = element_text(size = base_size, color = "white", margin = margin(0, 10, 0, 0)),  
      axis.title.y = element_text(size = base_size, color = "white", angle = 90, margin = margin(0, 10, 0, 0)),  
      axis.ticks.length = unit(0.3, "lines"),   
      # Specify legend options
      legend.background = element_rect(color = NA, fill = "black"),  
      legend.key = element_rect(color = "white",  fill = "black"),  
      legend.key.size = unit(1.2, "lines"),  
      legend.key.height = NULL,  
      legend.key.width = NULL,      
      legend.text = element_text(size = base_size*0.8, color = "white"),  
      legend.title = element_text(size = base_size*0.8, face = "bold", hjust = 0, color = "white"),  
      legend.position = "right",  
      legend.text.align = NULL,  
      legend.title.align = NULL,  
      legend.direction = "vertical",  
      legend.box = NULL, 
      # Specify panel options
      panel.background = element_rect(fill = "black", color  =  NA),  
      panel.border = element_rect(fill = NA, color = "white"),  
      panel.grid.major = element_line(color = "grey35"),  
      panel.grid.minor = element_line(color = "grey20"),  
      panel.margin = unit(0.5, "lines"),   
      # Specify facetting options
      strip.background = element_rect(fill = "grey30", color = "grey10"),  
      strip.text.x = element_text(size = base_size*0.8, color = "white"),  
      strip.text.y = element_text(size = base_size*0.8, color = "white",angle = -90),  
      # Specify plot options
      plot.background = element_rect(color = "black", fill = "black"),  
      plot.title = element_text(size = base_size*1.2, color = "white"),  
      plot.margin = unit(rep(1, 4), "lines")
 
    )
}

ggplot(d, aes(x,y)) + geom_line(color="white") + geom_point(size=3, color="white") + 
  theme_black() + 
  theme(axis.title=element_blank(),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        panel.border = element_blank()) + 
  geom_hline(yintercept = c(5,6), lty=2, color="white") + 
  scale_y_continuous(breaks=seq(1, 6, 1), label=sprintf("$%s",seq(300,400,20))) +
  scale_x_continuous(breaks=x,label=x) +
  annotate("text", x = c(1977,1977.2), y = c(1.5,5.5), 
           adj=1,  family="serif",
           label = c("Per capita\nbudget expenditures\nin constant dollars", "5%"), color="white")

ggsave("Tufte_black_sample_plot.png")
```

------------------------------------------------------------------------

class: center

How to make a nice looking graph in ggplot2
===========================================

.pull-left\[

<img src="images/nice-vol-pic1.jpg" width="95%" />

\]

.pull-right\[

<img src="images/nice-vol-pic2.jpg" width="95%" />

\]

Focus, hard work, and learning by doing.
----------------------------------------

------------------------------------------------------------------------

class: center

How to implement all of Tufte's suggestions in ggplot2 ...
==========================================================

.pull-left\[

<img src="images/nice-ski-pic1.jpg" width="95%" />

\]

--

.pull-right\[

<img src="images/nice-ski-pic2.gif" width="95%" />

\]

sometimes you just cannot avoid tricks or hacks
-----------------------------------------------

------------------------------------------------------------------------

Lot's of packages
=================

<!--- Examples from http://motioninsocial.com/tufte/ -->
``` r
install.packages(c("CarletonStats", "devtools", 
                   "epanetReader", "fmsb", "ggplot2", 
                   "ggthemes", "latticeExtra", "MASS", 
                   "PerformanceAnalytics", "psych", 
                   "prettyR", "plotrix", "proto", "RCurl"))
```

------------------------------------------------------------------------

Line Plot
=========

<img src="images/Tufte2001_p66_NYbudget1.png" width="49%" /> <img src="images/Tufte2001_p66_NYbudget2.png" width="49%" />

<small>Tufte re-creates the bar chart as a line graph, taking population growth and inflation into account. </small>

------------------------------------------------------------------------

Line Plot
=========

``` r
x <- 1967:1977
y <- c(0.5,1.8,4.6,5.3,5.3,5.7,5.4,5,5.5,6,5)
d <- data.frame(x, y)
ggplot(d, aes(x,y)) + geom_line()
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-59-1.png)

------------------------------------------------------------------------

**Minimal** Line Plot
=====================

``` r
ggplot(d, aes(x,y)) + geom_line() + geom_point(size=3) + 
  theme_tufte(base_size = 15) + theme(axis.title=element_blank()) + 
  geom_hline(yintercept = c(5,6), lty=2) + 
  scale_y_continuous(breaks=seq(1, 6, 1), 
                     label=sprintf("$%s",seq(300,400,20))) + 
  scale_x_continuous(breaks=x,label=x) +
  annotate("text", x = c(1977,1977.2), y = c(1.5,5.5), 
           adj=1, family="serif",
           label = c("Per capita\nbudget expenditures\nin 
                     constant dollars", "5%"))
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-60-1.png)

------------------------------------------------------------------------

Bar Plot
========

``` r
dat <- colMeans(msq[,c(2,7,34,36,42,43,46,55,68)], na.rm = T)*10

d <- tibble(trait = names(dat), value = dat)
ggplot(d, aes(x=trait, y=value)) + 
  geom_bar(stat = "identity")
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-62-1.png)

------------------------------------------------------------------------

**Minimal** Bar Plot
====================

``` r
ggplot(d, aes(x=trait, y=value)) + 
  theme_tufte(base_size=14, ticks=F) + theme(axis.title=element_blank()) +
  geom_bar(width=0.25, fill="gray", stat = "identity") + 
  scale_y_continuous(breaks=seq(1, 5, 1)) + 
  geom_hline(yintercept=seq(1, 5, 1), col="white", lwd=1) +
  annotate("text", x = 3.5, y = 5, adj=1,  family="serif",
  label = c("Average scores\non negative emotion traits
          from 3896 participants\n(Watson et al., 1988)"))
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-63-1.png)

------------------------------------------------------------------------

Boxplot
=======

``` r
ggplot(quakes, aes(factor(mag),stations)) +
  geom_boxplot()
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-64-1.png)

------------------------------------------------------------------------

**Minimal** Boxplot
===================

``` r
ggplot(quakes, aes(factor(mag),stations)) + theme_tufte() +
  geom_tufteboxplot(outlier.colour="transparent") + 
  theme(axis.title=element_blank()) +
  annotate("text", x = 8, y = 120, adj=1,  family="serif",
  label = c("Number of stations \nreporting 
            Richter Magnitude\nof Fiji earthquakes (n=1000)"))
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-65-1.png)

------------------------------------------------------------------------

Slopegraph
==========

.pull-left\[

<img src="images/slopegraph_cancertable.jpg" width="100%" />

\]

--

.pull-right\[

<img src="images/slopegraph_cancertable_redesigned.jpg" width="100%" />

\]

???

Source: Hermann Brenner, "Long-term survival rates of cancer patients achieved by the end of the 20th century: a period analysis," The Lancet, 360 (October 12, 2002), 1131-1135.

------------------------------------------------------------------------

background-image: url(images/slopegraph\_tufte.png) background-size: 37% background-position: 85% 0%

Slopegraph
==========

<img src="images/slopegraph_cancertable.jpg" width="47%" />

------------------------------------------------------------------------

Slopegraph
==========

``` r
library(RCurl)
# Get some functions for the slope graph
source_url("https://raw.githubusercontent.com/jkeirstead/r-slopegraph/master/slopegraph.r")
# The data is here
d <- read.csv(text = getURL("https://raw.githubusercontent.com/jkeirstead/r-slopegraph/master/cancer_survival_rates.csv"))
head(d)
```

    ##                              group year value
    ## 1                      Oral cavity    5  56.7
    ## 2                       Oesophagus    5  14.2
    ## 3                          Stomach    5  23.8
    ## 4                            Colon    5  61.7
    ## 5                           Rectum    5  62.6
    ## 6 Liver and intrahepatic bile duct    5   7.5

------------------------------------------------------------------------

Slopegraph
==========

``` r
# Using James Keirstead’s GitHubs functions
# https://github.com/jkeirstead/r-slopegraph
## Convert raw data to right format

df <- build_slopegraph(d, x="year", y="value", 
                       group="group", method="tufte", 
                       min.space=0.04)
df$x <- df$variable
df$y <- df$value
df <- transform(df, x=factor(x, levels=c(5,10,15,20), 
         labels=c("5 years","10 years","15 years","20 years")), 
         y=round(y))
```

------------------------------------------------------------------------

Slopegraph
==========

.pull-left\[

``` r
plot_slopegraph(df) + 
  labs(title = "Estimates 
       of % survival rates") +
  theme_tufte(base_size=16, 
              ticks=F) + 
  theme(axis.title = 
          element_blank())
```

\]

.pull-right\[

<img src="images/slopegraph_ggplot.png" width="100%" />

\]

------------------------------------------------------------------------

Sparklines
==========

<img src="images/sparkline_tufte.png" width="100%" />

--

.pull-left\[

<img src="images/sparkline_apple_watch.png" width="70%" />

\]

<table style="width:3%;">
<colgroup>
<col width="2%" />
</colgroup>
<tbody>
<tr class="odd">
<td>.pull-right[</td>
</tr>
<tr class="even">
<td><img src="images/types-of-sparklines.png" width="100%" /></td>
</tr>
<tr class="odd">
<td>]</td>
</tr>
</tbody>
</table>

Sparklines
==========

``` r
# Read in Data
d <- read_csv("data/us_nr_of_crimes_1960_2014.csv")
d <- tidyr::gather(d, Crime.Type = "Total":"Vehicle-Theft")
names(d) <- c("Year","Crime.Type","Crime.Rate")

# Get summary statistics we want to highlight in Sparkline Graph
d$Crime.Rate <- round(d$Crime.Rate,0)
mins <- group_by(d, Crime.Type) %>% slice(which.min(Crime.Rate))
maxs <- group_by(d, Crime.Type) %>% slice(which.max(Crime.Rate))
ends <- group_by(d, Crime.Type) %>% filter(Year == max(Year))
```

------------------------------------------------------------------------

Sparklines
==========

``` r
## Get quartile ranges for plot
d <- d %>% group_by(Crime.Type) %>%
  mutate(quart1 = quantile(Crime.Rate, probs = 0.25),
         quart2 = quantile(Crime.Rate, probs = 0.75))
d
```

    ## # A tibble: 550 x 5
    ## # Groups:   Crime.Type [10]
    ##     Year Crime.Type Crime.Rate quart1 quart2
    ##    <int> <chr>           <dbl>  <dbl>  <dbl>
    ##  1  1960 Total            1887   3418   5292
    ##  2  1961 Total            1906   3418   5292
    ##  3  1962 Total            2020   3418   5292
    ##  4  1963 Total            2180   3418   5292
    ##  5  1964 Total            2388   3418   5292
    ##  6  1965 Total            2449   3418   5292
    ##  7  1966 Total            2671   3418   5292
    ##  8  1967 Total            2990   3418   5292
    ##  9  1968 Total            3370   3418   5292
    ## 10  1969 Total            3680   3418   5292
    ## # ... with 540 more rows

------------------------------------------------------------------------

Sparklines
==========

``` r
# Lot's of options - that is the "hacky" part
ggplot(d, aes(x=Year, y=Crime.Rate)) + 
  facet_grid(Crime.Type ~ ., scales = "free_y") + 
  geom_ribbon(aes(ymin = quart1, max = quart2), fill = 'grey90') +
  geom_line(size=0.3) +
  geom_point(data = mins, col = 'red') +
  geom_point(data = maxs, col = 'blue') +
  geom_text(data = mins, aes(label = Crime.Rate), vjust = -1) +
  geom_text(data = maxs, aes(label = Crime.Rate), vjust = 2.5) +
  geom_text(data = ends, aes(label = Crime.Rate), 
            hjust = 0, nudge_x = 1) +
  geom_text(data = ends, aes(label = Crime.Type), 
            hjust = 0, nudge_x = 5) +
  expand_limits(x = max(d$Year) + 
                  (0.25 * (max(d$Year) - min(d$Year)))) +
  scale_x_continuous(breaks = seq(1960, 2010, 10)) +
  scale_y_continuous(expand = c(0.1, 0)) +
  theme_tufte(base_size = 15, base_family = "Helvetica") +
  theme(axis.title=element_blank(), axis.text.y = element_blank(), 
        axis.ticks = element_blank(), strip.text = element_blank())
```

------------------------------------------------------------------------

Sparklines
==========

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-81-1.png)

------------------------------------------------------------------------

class: center, bottom, inverse background-image: url(images/economist\_corruption.png) background-size: 70% background-position: 50% 25%

Tutorial: Re-creating an [Economist Graph](http://www.economist.com/node/21541178)
==================================================================================

???

Let's try to re-create [this graph](http://www.economist.com/node/21541178) using ggplot2:

------------------------------------------------------------------------

Get the data
============

The data for the exercises is available in the `data/EconomistData.csv` file. Read it in with

``` r
library(readr)
data <- read_csv("data/economistdata.csv")
```

<small><small> Original sources for these data are

<http://www.transparency.org/content/download/64476/1031428>

<http://hdrstats.undp.org/en/indicators/display_cf_xls_indicator.cfm?indicator_id=103106&lang=en>

</small></small>

These data consist of *Human Development Index* and *Corruption Perception Index* scores for several countries.

------------------------------------------------------------------------

Scatter plot
============

``` r
library(ggplot2)
  ggplot(data, aes(x = CPI, y = HDI)) +
    geom_point()
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-83-1.png)

------------------------------------------------------------------------

Color scatter by region
=======================

``` r
pc1 <- ggplot(data, aes(x = CPI, y = HDI, color = Region))
pc1 + geom_point()
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-84-1.png)

------------------------------------------------------------------------

Adding a trend line
===================

``` r
  (pc2 <- pc1 +
     geom_smooth(aes(group = 1),
                 method = "lm",
                 formula = y ~ log(x),
                 se = FALSE,
                 color = "red")) +
     geom_point()
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-85-1.png)

Notice that we put the `geom_line` layer first so that it will be plotted underneath the points, as was done on the original graph.

------------------------------------------------------------------------

Use open points
===============

We can change the shape with the `shape` argument, what what value do we set shape to? The example shown in `?shape` can help us:

``` r
  ## A look at all 25 symbols
  df2 <- data.frame(x = 1:5 , y = 1:25, z = 1:25)
  s <- ggplot(df2, aes(x = x, y = y))
  s + geom_point(aes(shape = z), size = 4) + scale_shape_identity()
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-86-1.png)

``` r
  ## While all symbols have a foreground colour, symbols 19-25 also take a
  ## background colour (fill)
  s + geom_point(aes(shape = z), size = 4, colour = "Red") +
    scale_shape_identity()
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-86-2.png)

------------------------------------------------------------------------

Which shape allows fill?
========================

``` r
  s + geom_point(aes(shape = z), size = 4, colour = "Red", fill = "Black") +
    scale_shape_identity()
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-87-1.png)

------------------------------------------------------------------------

Use *shape 1* in the scatter
============================

``` r
  pc2 +
    geom_point(shape = 1, size = 4)
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-88-1.png)

------------------------------------------------------------------------

Make stroke around the shape thicker
====================================

Pretty good, but the size of the line around the points is much narrower than on the original.

``` r
  (pc3 <- pc2 +
    geom_point(shape = 1, size = 4, stroke=2))
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-89-1.png)

------------------------------------------------------------------------

Labelling points
================

There is no attribute in the data that separates points that should be labelled from points that should not be. So the first step is to identify those points.

``` r
pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", 
                   "Brazil", "India", "Italy", "China", 
                   "South Africa", "Spain", "Botswana", "Cape Verde", 
                   "Bhutan", "Rwanda", "France", "United States", 
                   "Germany", "Britain", "Barbados", "Norway", 
                   "Japan", "New Zealand", "Singapore")
```

Now we can label these points using `geom_text`.

------------------------------------------------------------------------

Labelling points
================

``` r
library(dplyr)
pc3 + geom_text(aes(label = Country),
              color = "gray20", size = 6,
              data = filter(data, Country %in% pointsToLabel))
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-91-1.png)

------------------------------------------------------------------------

Prevent overlapping points
==========================

``` r
library(ggrepel)
 (pc4 <- pc3 +
    geom_text_repel(aes(label = Country),
              color = "gray20", size = 6,
              data = filter(data, Country %in% pointsToLabel),
              force = 10))
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-92-1.png)

``` r
# Not perfect, but will do.
```

------------------------------------------------------------------------

Correct region labels and order
===============================

Comparing our graph to the original we notice that the labels and order of the Regions in the color legend differ.

``` r
# To correct the labels and order of the Region variable, 
# we can use the `factor` function.
data$Region <- factor(data$Region,
                       levels = c("EU W. Europe",
                                  "Americas",
                                  "Asia Pacific",
                                  "East EU Cemt Asia",
                                  "MENA",
                                  "SSA"),
                       labels = c("OECD",
                                  "Americas",
                                  "Asia &\nOceania",
                                  "Central &\nEastern Europe",
                                  "Middle East &\nnorth Africa",
                                  "Sub-Saharan\nAfrica"))
```

------------------------------------------------------------------------

Correct region labels and order
===============================

``` r
  pc4$data <- data
  pc4
```

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-94-1.png)

------------------------------------------------------------------------

Add title and format axes
=========================

The next step is to add the title and format the axes. We do that using the `scales` system in ggplot2.

``` r
library(grid)
  (pc5 <- pc4 +
    scale_x_continuous(name = "Corruption Perceptions Index, 
                       2011 (10=least corrupt)",
                       limits = c(.9, 10.5),
                       breaks = 1:10,
                       expand = c(0, 0)) +
    scale_y_continuous(name = "Human Development Index, 
                       2011 (1=Best)",
                       limits = c(0.2, 1.0),
                       breaks = seq(0.2, 1.0, by = 0.1),
                       expand = c(0, 0)) +
    scale_color_manual(name = "",
                       values = c("#24576D", "#099DD7",
                                  "#28AADC", "#248E84",
                                  "#F2583F", "#96503F")) + 
    ggtitle("Corruption and human development"))
```

------------------------------------------------------------------------

Add title and format axes
=========================

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-96-1.png)

--

Our graph is almost there. To finish up, we need to adjust some of the theme elements, and label the axes and legends.

------------------------------------------------------------------------

Theme tweaks
============

``` r
library(grid) # for the 'unit' function
  (pc6 <- pc5 +
    theme_minimal() + # start with a minimal theme and add what we need
    guides(colour = guide_legend(nrow = 1)) +  # single row for legend
    theme(text = element_text(color = "gray20"),
          legend.position = c("top"), # position the legend in the upper left 
          legend.direction = "horizontal",
          legend.justification = 0.05, # anchor point for legend.position.
          legend.text = element_text(size = 11, color = "gray10"),
          legend.key.height=unit(1,"line"),
          legend.key.width=unit(3,"line"),
          axis.text = element_text(face = "italic"),
          axis.title.x = element_text(vjust = -1), # move title away from axis
          axis.title.y = element_text(vjust = 2), # move away for axis
          axis.ticks.y = element_blank(), # element_blank() is how we remove elements
          axis.line = element_line(color = "gray40", size = 0.5),
          axis.line.y = element_blank(),
          panel.grid.major = element_line(color = "gray50", size = 0.5),
          panel.grid.major.x = element_blank(),
          plot.margin = margin(t = 0, r = 0, b = 40, l = 5, unit = "pt"),
          plot.title = element_text(face = "bold", color = "black", size = 25)
          ))
```

------------------------------------------------------------------------

Theme tweaks
============

![](week03_lecture_files/figure-markdown_github/unnamed-chunk-98-1.png)

------------------------------------------------------------------------

Add model R<sup>2</sup> and source note
=======================================

The last bit of information that we want to have on the graph is the variance explained by the model represented by the trend line. Lets fit that model and pull out the R<sup>2</sup> first, then think about how to get it onto the graph.

``` r
  (mR2 <- summary(lm(HDI ~ log(CPI), data = data))$r.squared)
```

    ## [1] 0.5212859

ggplot2 has an `annotate` function, but this is not convenient for adding elements outside the plot area. The `grid` package has nice functions for doing this, so we'll use those.

And here it is, our final version!

------------------------------------------------------------------------

Final Version
=============

<img src="images/economist_scatter.png" width="90%" />

------------------------------------------------------------------------

Final Version - compare to original
===================================

<img src="images/economist_scatter.png" width="44%" /> <img src="images/Economist_corruption.png" width="49%" />

Comparing it to the original suggests that we've got most of the important elements, though of course the two graphs are not identical.

------------------------------------------------------------------------

ggplot2 extensions
==================

[www.ggplot2-exts.org](http://www.ggplot2-exts.org/gallery/) provides extension packages for ggplot2.

-   Here a few good ones:
-   [`ggalt()`](https://github.com/hrbrmstr/ggalt) has `geom_encircle()` to encircle points automatically.
-   [`ggthemes()`](https://github.com/jrnold/ggthemes) We have use this before. Adds pre-defined themes to change the look of your plots.
-   [`ggally()`](http://ggobi.github.io/ggally/) Allows to combine graphs in a matrix, provides simple coefficient plots, and some nice network maps.
-   [`ggrepel`](https://github.com/slowkow/ggrepel) Repel overlapping text labels away from each other.
-   [`patchwork`](https://github.com/thomasp85/patchwork) is not listed on the site but a great recent edition to combine separate ggplots into the same graphic.

-   ggedit() - A GUI to control ggplot2. Install from GitHub with `devtools::install_github("metrumresearchgroup/ggedit",subdir="ggedit")` if interested.
