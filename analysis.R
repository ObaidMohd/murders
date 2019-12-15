library(tidyverse)
load("murders/rda/murders.rda")

murders %>% mutate(abb=reorder(abb,rate)) %>%
  ggplot(aes(abb,rate))+
  geom_bar(width = 0.5, stat="identity", color="black")+
  coord_flip()

# we want to save the plot generated into a file under figs directory
ggsave("murders/figs/barplot.png")
