gantt
        dateFormat  YYYY-MM-DD
        title Zixuan's Life Story

        section Where I Have Been
        NANJING            :done,    des1, 2014-12-07,2015-08-24
        ROTTERDAM               :done,    des2, 2015-08-25,2016-08-24
        AMSTERDAM               :done,         des3, 2016-08-25,2018-01-08
        BOSTON						:done,         des4, 2018-01-09,2018-05-15
        SHANGHAI					:done, des5, 2018-05-28,2018-08-22
        AMSTERDAM              :done        des6, 2018-09-01,2019-07-02
        NEW YORK						:done        des7, 2019-09-03,2020-06-30
        SHENZHEN					:done        des8, 2020-09-03,2020-12-01
        BEIJING					:active        des9, 2020-12-07,2021-06-30
			
        section Education
        Erasmus Uni R'dam :crit, done, 2015-09-01,2016-08-30
        Amsterdam University College          :crit, done, after des2, 1000d
        Boston College             :crit, done, 2018-01-01,2018-08-28
        Columbia University        :crit, done, 2019-09-01,2021-05-15
        Create tests for renderer           :200d
        Add to mermaid                      :100d

        section Work
        Describe gantt syntax               :active, a1, after des1, 300d
        Add gantt diagram to demo page      :after a1  , 200d
        Add another diagram to demo page    :doc1, after a1  , 480d

        section Relationships
        Describe gantt syntax               :after doc1, 300d
        Add gantt diagram to demo page      : 200d
        Add another diagram to demo page    : 480d
