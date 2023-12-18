#' Custom Scatter Plot
#'
#' This function creates a customized scatter plot using ggplot2. It allows you to visualize the relationship between two numeric variables.
#'
#' @param x Numeric vector for the x-axis, representing one variable.
#' @param y Numeric vector for the y-axis, representing another variable.
#' @param color Character, color of the points on the scatter plot.
#' @param size Numeric, size of the points on the scatter plot.
#'
#' @return A ggplot2 scatter plot object.
#'
#' @examples
#' # Sample Data
#' set.seed(123)
#' data <- data.frame(x = rnorm(100), y = rnorm(100))
#'
#' # Create a custom scatter plot
#' customScatterPlot(x = data$x, y = data$y, color = "steelblue", size = 4)
#'
#' @export
customScatterPlot <- function(x, y, color = "steelblue", size = 3) {
  ggplot2::ggplot(data = data.frame(x, y), aes(x = x, y = y)) +
    geom_point(color = color, size = size) +
    theme_minimal() +
    labs(title = "Custom Scatter Plot",
         x = "X-axis Label",
         y = "Y-axis Label")
}


#' Custom Bar Plot
#'
#' This function creates a customized bar plot using ggplot2. It is designed to visualize the distribution of a numeric variable across different categories.
#'
#' @param x Factor or character vector for the x-axis, representing categories.
#' @param y Numeric vector for the y-axis, representing the values of each category.
#' @param fill Character, fill color of the bars in the bar plot.
#'
#' @return A ggplot2 bar plot object.
#'
#' @examples
#' # Sample Data
#' data_bar <- data.frame(category = letters[1:5], value = c(3, 7, 2, 5, 9))
#'
#' # Create a custom bar plot
#' customBarPlot(x = data_bar$category, y = data_bar$value, fill = "darkgreen")
#'
#' @export
customBarPlot <- function(x, y, fill = "darkgreen") {
  ggplot2::ggplot(data = data.frame(x, y), aes(x = x, y = y)) +
    geom_bar(stat = "identity", fill = fill) +
    theme_minimal() +
    labs(title = "Custom Bar Plot",
         x = "X-axis Label",
         y = "Y-axis Label")
}

#' Custom Line Plot
#'
#' This function creates a customized line plot using ggplot2. It is suitable for visualizing the trend or pattern in a numeric variable over a continuous range.
#'
#' @param x Numeric vector for the x-axis, representing a continuous range.
#' @param y Numeric vector for the y-axis, representing the values at each point on the line.
#' @param color Character, color of the line in the line plot.
#' @param size Numeric, size of the line in the line plot.
#'
#' @return A ggplot2 line plot object.
#'
#' @examples
#' # Sample Data
#' data_line <- data.frame(x = 1:10, y = cumsum(rnorm(10)))
#'
#' # Create a custom line plot
#' customLinePlot(x = data_line$x, y = data_line$y, color = "darkred", size = 1.5)
#'
#' @export
customLinePlot <- function(x, y, color = "darkred", size = 1.5) {
  ggplot2::ggplot(data = data.frame(x, y), aes(x = x, y = y)) +
    geom_line(color = color, size = size) +
    theme_minimal() +
    labs(title = "Custom Line Plot",
         x = "X-axis Label",
         y = "Y-axis Label")
}
