library(tidyverse)
library(dplyr)
library(data.table)

diamonds

diamonds%>%
  select(carat,cut,price)%>%
  filter(cut == "Premium")%>%
  filter(price > 7000 & price < 10000)%>%
  arrange(desc(carat))%>%
  slice(1:20)

diamonds1 <- as.data.table(diamonds)
diamonds2 <- diamonds1[cut == "Premium" & price > 7000 & price < 10000,  c("carat", "cut", "price")]
diamonds2[order(-carat)][1:20]
