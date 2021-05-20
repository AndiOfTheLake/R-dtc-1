## ---- pkg ----
library(dplyr)
library(ggplot2)
library(gridExtra)

head(mtcars)
load('diamonds.RData')

# Draw a ggplot
plt_price_vs_carat <- ggplot(diamonds, aes(carat, price)) + geom_point()
plt_price_vs_carat


par(mfrow = c(1,2))
# From previous step
plt_price_vs_carat <- ggplot(diamonds, aes(carat, price))

# Edit this to make points 20% opaque: plt_price_vs_carat_transparent
plt_price_vs_carat_transparent <- plt_price_vs_carat + geom_point(alpha = 0.2)

# See the plot
plt_price_vs_carat_transparent

# From previous step
plt_price_vs_carat <- ggplot(diamonds, aes(carat, price))

# Edit this to map color to clarity,
# Assign the updated plot to a new object
plt_price_vs_carat_by_clarity <- plt_price_vs_carat + geom_point(aes(color = clarity))

# See the plot
plt_price_vs_carat_by_clarity

grid.arrange(plt_price_vs_carat_by_clarity, 
             plt_price_vs_carat_transparent,
             ncol = 2)
head(mtcars)
mtcars$fcyl <- factor(mtcars$cyl)



load("diamonds.RData")
library(car)
head(Vocab)

load("fish.RData")
