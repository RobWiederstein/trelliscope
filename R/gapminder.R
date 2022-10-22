#install.packages("trelliscopejs")

library(dplyr)
library(trelliscopejs)
library(ggplot2)
library(gapminder)


qplot(year, lifeExp, data = gapminder) +
        xlim(1948, 2011) + ylim(10, 95) + theme_bw() +
        facet_trelliscope(~ country + continent, nrow = 2, ncol = 7, width = 300)

trell_files <- list.files("/tmp/gap", full.names = T)
file.copy(from = trell_files,
          to = "./docs",
          recursive = T)
