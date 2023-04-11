install.packages("tidyquant")
library(tidyquant)
library(ggplot2)

start_date <- "2021-01-01"
end_date <- Sys.Date()

top_30 <- c("AAPL", "MSFT", "AMZN", "GOOGL", "GOOG", "FB", "TSLA", "BRK-A", "BRK-B", "V", "JNJ", "JPM", "NVDA", "UNH", "MA", "PYPL", "HD", "PG", "BAC", "DIS", "VZ", "NFLX", "KO", "INTC", "ADBE", "CMCSA", "PEP", "PFE", "ORCL", "ABT")

top_30_data <- tq_get(top_30, from = start_date, to = end_date) |> tq_index()


plot_a <- ggplot(top_30_data, aes(x = date, y = close, color = symbol)) +
  geom_line() +
  scale_x_date(date_labels = "%b %Y", date_breaks = "6 months") +
  labs(x = "Date", y = "Stock Price", title = "Top 30 Companies by Market Capitalization")


