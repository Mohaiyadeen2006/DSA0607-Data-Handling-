library(plotly)

geo_data <- data.frame(
  City = c("City A", "City B", "City C"),
  Latitude = c(13.0827, 28.7041, 19.0760),
  Longitude = c(80.2707, 77.1025, 72.8777)
)

plot_ly(
  geo_data,
  lat = ~Latitude,
  lon = ~Longitude,
  text = ~City,
  type = "scattergeo",
  mode = "markers+text",
  textposition = "top center"
) %>%
  layout(title = "Geographic Distribution of Cities")