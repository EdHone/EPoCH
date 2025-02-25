tabPanel(title="Plot by outcome",value="tab3",
         # Side bar
         sidebarLayout(
           sidebarPanel(
             radioButtons("out_class",label=NULL,choices = "Load results first"),
             radioButtons("model",label="Which model?",
                          choices = paste0("Model ",as.vector(outer(1:4, letters[1:3], paste0)))),
             actionButton("tab3Go","Visualise results")
           ),
           # Main panel
           mainPanel(
             tabsetPanel(
               tabPanel("Manhattan",
             textOutput('Text3'),
             plotlyOutput("outcomeManhattanPlot", width = "1500px", height = "800px")
           ),
           tabPanel("Volcano",
                    plotlyOutput("outcomeVolcanoPlot", width = "1000px", height = "500px")
           )
)
)
)
)
