## ---- pkg ----
library(gapminder)
library(dplyr)


# Filter the gapminder dataset for the year 1957
gapminder %>% filter(year == "1957")
# Filter for the year 1957, then arrange in descending order of population
gapminder %>% filter(year == "1957") %>% arrange(desc(pop))

