library(plotly)
data(mtcars)

plot_ly(mtcars, x = ~wt, y = ~mpg, mode='markers')

