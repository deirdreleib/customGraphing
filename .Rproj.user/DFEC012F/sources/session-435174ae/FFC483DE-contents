#' Custom Scatter Plot Gadget
#'
#' This Shiny gadget allows users to create a custom scatter plot using ggplot2.
#'
#' @param data A data frame with numeric columns 'x' and 'y'.
#'
#' @return A Shiny application for custom scatter plot.
#' @export
scatterPlotGadget <- function(data) {
  # UI Definition
  ui <- fluidPage(
    titlePanel("Custom Scatter Plot Gadget"),
    sidebarLayout(
      sidebarPanel(
        sliderInput("size", "Point Size:", min = 1, max = 10, value = 3)
      ),
      mainPanel(
        plotOutput("scatterPlot")
      )
    )
  )

  # Server Logic
  server <- function(input, output) {
    output$scatterPlot <- renderPlot({
      ggplot(data, aes(x = x, y = y)) +
        geom_point(color = "steelblue", size = input$size) +
        theme_minimal() +
        labs(title = "Custom Scatter Plot", x = "X-axis Label", y = "Y-axis Label")
    })
  }

  # Run the application
  shinyApp(ui = ui, server = server)
}

#' Custom Bar Plot Gadget
#'
#' This Shiny gadget allows users to create a custom bar plot using ggplot2.
#'
#' @param data_bar A data frame with columns 'category' and 'value'.
#'
#' @return A Shiny application for custom bar plot.
#' @export
barPlotGadget <- function(data_bar) {
  ui <- fluidPage(
    titlePanel("Custom Bar Plot Gadget"),
    sidebarLayout(
      sidebarPanel(
        selectInput("fill", "Bar Fill Color:", choices = c("darkgreen", "orange", "purple"), selected = "darkgreen")
      ),
      mainPanel(
        plotOutput("barPlot")
      )
    )
  )

  server <- function(input, output) {
    output$barPlot <- renderPlot({
      ggplot(data_bar, aes(x = category, y = value)) +
        geom_bar(stat = "identity", fill = input$fill) +
        theme_minimal() +
        labs(title = "Custom Bar Plot", x = "X-axis Label", y = "Y-axis Label")
    })
  }

  shinyApp(ui = ui, server = server)
}

#' Custom Line Plot Gadget
#'
#' This Shiny gadget allows users to create a custom line plot using ggplot2.
#'
#' @param data_line A data frame with numeric columns 'x' and 'y'.
#'
#' @return A Shiny application for custom line plot.
#' @export
linePlotGadget <- function(data_line) {
  ui <- fluidPage(
    titlePanel("Custom Line Plot Gadget"),
    sidebarLayout(
      sidebarPanel(
        sliderInput("line_size", "Line Size:", min = 0.5, max = 3, value = 1.5)
      ),
      mainPanel(
        plotOutput("linePlot")
      )
    )
  )

  server <- function(input, output) {
    output$linePlot <- renderPlot({
      ggplot(data_line, aes(x = x, y = y)) +
        geom_line(color = "darkred", size = input$line_size) +
        theme_minimal() +
        labs(title = "Custom Line Plot", x = "X-axis Label", y = "Y-axis Label")
    })
  }

  shinyApp(ui = ui, server = server)
}

# Example usage:
# scatterPlotGadget(data)
# barPlotGadget(data_bar)
# linePlotGadget(data_line)
