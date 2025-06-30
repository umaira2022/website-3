library(tidyverse)

x <- read_rds("clean_data.rds")

D_plot <- x |> 
  ggplot(aes(x = carat, y = price, color = cut)) + 
  geom_point() +
  scale_y_continuous(labels = scales::dollar) +
  labs(title = "Diamond Size vs. Price", 
       x = "Carat", 
       y = "Price", 
       color = "Cut") +
  theme_minimal()

ggsave("size_v_weight.png", D_plot)
