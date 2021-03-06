## example taken from http://rstudio.github.io/dygraphs/shiny.html

library(dygraphs)

shinyUI(fluidPage(

    titlePanel("Predicted Deaths from Lung Disease (UK)"),

    sidebarLayout(
        sidebarPanel(
            numericInput("months", label = "Months to Predict",
                         value = 72, min = 12, max = 144, step = 12),
            selectInput("interval", label = "Prediction Interval",
                        choices = c("0.80", "0.90", "0.95", "0.99"),
                        selected = "0.95"),
            checkboxInput("showgrid", label = "Show Grid", value = TRUE),
            hr(),
            div(strong("From: "),
                textOutput("from", inline = TRUE)),
            div(strong("To: "),
                textOutput("to", inline = TRUE)),
            div(strong("Date clicked: "),
                textOutput("clicked", inline = TRUE)),
            div(strong("Nearest point clicked: "),
                textOutput("point", inline = TRUE)),
            br(),
            helpText(
                "Click and drag to zoom in (double click to zoom back out)."
            )
        ),
        mainPanel(
            dygraphOutput("dygraph")
        )
    )
))
