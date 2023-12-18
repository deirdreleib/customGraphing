# Custom Plotting Functions and Shiny Gadgets

[![License: GPL-3.0](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

## Overview

This R package provides custom plotting functions using ggplot2 for creating visually appealing scatter plots, bar plots, and line plots. Additionally, Shiny gadgets are included for each plot type, allowing users to interactively create customized plots.

## Functions

### `customScatterPlot`

This function creates a customized scatter plot using ggplot2, allowing users to visualize the relationship between two numeric variables.

**Parameters:**
- `x`: Numeric vector for the x-axis, representing one variable.
- `y`: Numeric vector for the y-axis, representing another variable.
- `color`: Character, color of the points on the scatter plot.
- `size`: Numeric, size of the points on the scatter plot.

**Example:**
```R
# Sample Data
set.seed(123)
data <- data.frame(x = rnorm(100), y = rnorm(100))

# Create a custom scatter plot
customScatterPlot(x = data$x, y = data$y, color = "steelblue", size = 4)
```

### `customBarPlot`

This function creates a customized bar plot using ggplot2 to visualize the distribution of a numeric variable across different categories.

**Parameters:**
- `x`: Factor or character vector for the x-axis, representing categories.
- `y`: Numeric vector for the y-axis, representing the values of each category.
- `fill`: Character, fill color of the bars in the bar plot.

**Example:**
```R
# Sample Data
data_bar <- data.frame(category = letters[1:5], value = c(3, 7, 2, 5, 9))

# Create a custom bar plot
customBarPlot(x = data_bar$category, y = data_bar$value, fill = "darkgreen")
```

### `customLinePlot`

This function creates a customized line plot using ggplot2, suitable for visualizing the trend or pattern in a numeric variable over a continuous range.

**Parameters:**
- `x`: Numeric vector for the x-axis, representing a continuous range.
- `y`: Numeric vector for the y-axis, representing the values at each point on the line.
- `color`: Character, color of the line in the line plot.
- `size`: Numeric, size of the line in the line plot.

**Example:**
```R
# Sample Data
data_line <- data.frame(x = 1:10, y = cumsum(rnorm(10)))

# Create a custom line plot
customLinePlot(x = data_line$x, y = data_line$y, color = "darkred", size = 1.5)
```

## Shiny Gadgets

### `scatterPlotGadget`

This Shiny gadget allows users to create a custom scatter plot interactively using ggplot2.

**Parameters:**
- `data`: A data frame with numeric columns 'x' and 'y'.

**Usage:**
```R
scatterPlotGadget(data)
```

### `barPlotGadget`

This Shiny gadget allows users to create a custom bar plot interactively using ggplot2.

**Parameters:**
- `data_bar`: A data frame with columns 'category' and 'value'.

**Usage:**
```R
barPlotGadget(data_bar)
```

### `linePlotGadget`

This Shiny gadget allows users to create a custom line plot interactively using ggplot2.

**Parameters:**
- `data_line`: A data frame with numeric columns 'x' and 'y'.

**Usage:**
```R
linePlotGadget(data_line)
```

## Installation

To use this package, install it from GitHub using the `devtools` package:

```R
devtools::install_github("deirdreleib/customGraphing")
library(customGraphing)
library(ggplot2)
library(shiny)
```
