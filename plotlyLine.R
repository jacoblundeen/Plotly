library(plotly)
library(tidyr)
library(dplyr)

data("EuStockMarkets")

stocks <- as.data.frame(EuStockMarkets) %>%
  gather(index, price) %>%
  mutate(time = rep(time(EuStockMarkets), 4))

plot_ly(stocks, x = ~time, y = ~price, color = ~index, type = 'scatter',
        mode = 'lines')

