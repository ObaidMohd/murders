library(tidyverse)
murders <- read.csv("murders/data/murders.csv")
murders <- murders %>% mutate(region=factor(region), rate=total/population*10^5)
save(murders, file = "murders/rda/murders.rda")
