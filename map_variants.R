ggplot() +
  geom_sf(data = metrics, aes_string(fill = "n", color = "n", geometry = "geometry"), lwd = 0.04) +
  scale_color_distiller(palette = "PuBu", na.value = "white", name = "Number of records", trans = "log10", direction = 1) +
  scale_fill_distiller(palette = "PuBu", na.value = "white", name = "Number of records", trans = "log10", direction = 1) +
  geom_sf(data = world, fill = "#dddddd", color = "#666666", lwd = 0.1) +
  theme(
    panel.grid.major.x = element_blank(),
    panel.grid.major.y = element_blank(),
    panel.grid.minor.x = element_blank(),
    panel.grid.minor.y = element_blank(), 
    panel.background = element_blank(),
    axis.text.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks = element_blank(),
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    legend.position = "top"
  ) +
  xlab("") + ylab("") +
  coord_sf(crs = "+proj=robin +lon_0=0 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=m +no_defs" )

ggsave("map/map_blue.png", width = 12, height = 7, dpi = 600)

ggplot() +
  geom_sf(data = metrics, aes_string(fill = "n", color = "n", geometry = "geometry"), lwd = 0.04) +
  scale_color_distiller(palette = "Blues", na.value = "white", name = "Number of records", trans = "log10", direction = 1) +
  scale_fill_distiller(palette = "Blues", na.value = "white", name = "Number of records", trans = "log10", direction = 1) +
  geom_sf(data = world, fill = "#dddddd", color = "#666666", lwd = 0.1) +
  theme(
    panel.grid.major.x = element_blank(),
    panel.grid.major.y = element_blank(),
    panel.grid.minor.x = element_blank(),
    panel.grid.minor.y = element_blank(), 
    panel.background = element_blank(),
    axis.text.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks = element_blank(),
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    legend.position = "top"
  ) +
  xlab("") + ylab("") +
  coord_sf(crs = "+proj=robin +lon_0=0 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=m +no_defs" )

ggsave("map/map_blue2.png", width = 12, height = 7, dpi = 600)

