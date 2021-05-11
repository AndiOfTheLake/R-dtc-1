## ---- pkg ----
library(gapminder)
library(dplyr)


# Filter the gapminder dataset for the year 1957
gapminder %>% filter(year == "1957")
# Filter for the year 1957, then arrange in descending order of population
gapminder %>% filter(year == "1957") %>% arrange(desc(pop))


# Summarize the median gdpPercap by year & continent, save as by_year_continent
by_year_continent<- gapminder %>% group_by(year, continent) %>% summarize(medianGdpPercap = median(gdpPercap))

# Create a line plot showing the change in medianGdpPercap by continent over time
ggplot(by_year_continent, aes(x = year, y = medianGdpPercap,color=continent)) + geom_line() + expand_limits(y = 0)
