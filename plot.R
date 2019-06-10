library(tidyverse)
library(magrittr)

csv <- commandArgs(TRUE)[1]
out <- "plot.png"

df <- read_csv(csv, col_names = c("md", "n"))
df %<>% mutate(date = as.Date(md, format = "%m月%d日"))

if(Sys.info()['sysname'] == "Darwin") theme_set(theme_grey(base_family = "HiraKakuProN-W3"))

p <- ggplot(df, aes(x = date, y = n)) +
  geom_line() +
  ggtitle("花菖蒲開花数")

ggsave(out, p, width = 8, height = 4.5)
