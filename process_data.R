library(tidyverse)

D_diamonds <- diamonds |> 
  filter(z != 0) |> 
  filter(color == "D") 

write_rds(D_diamonds, file = "clean_data.rds")
