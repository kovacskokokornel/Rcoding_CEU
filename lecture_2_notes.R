# Lecture #2 notes



getwd()
setwd("-/Git/...")
student_first_names <- read.csv("student-names.csv")
student_first_names

sample(student_first_names, 4) ## sampling columns and rows!
sample_n(student_first_names, 4)
sample_n(student_first_names, 4)

library(tidyverse)

# data = gapminder
# mapping = aes()
# geometric object: geom, geom_point() for scatterplot()

library(ggplot2)
library(gapminder)
gapminder


p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, y = lifeExp))
p + geom_point()
p + geom_smooth()

p + geom_point() + geom_smooth()

# How else can geom_smooth() smooth?

?geom_smooth()

p + geom_point() + geom_smooth(method = "lm", color = "red")  + geom_smooth()

p + geom_point() + geom_smooth() + scale_x_log10()

library(scales)
p + geom_point() + geom_smooth() + scale_x_log10(labels = scales::dollar)
p + geom_point() + geom_smooth() + scale_x_log10(labels = scales::comma)

p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, 
                          y = lifeExp)

p + geom_point(colour = "yellow")

p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, 
                          y = lifeExp, 
                          color = continent, 
                          fill = continent))
p + geom_point()

p + geom_point() + 
  geom_smooth(size = 2, method = "lm") + 
  labs(x = "GDP per capita",
       y = "Life expency",
       title = "Economic growth and life exptency",
       subtitle = "data points",
       caption = "Source: Gapminder")

p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, 
                          y = lifeExp))

p + geom_point(mapping = aes (color = continent)) + 
  geom_smooth(size = 2, method = "lm") + 
  labs(x = "GDP per capita",
       y = "Life expency",
       title = "Economic growth and life exptency",
       subtitle = "data points",
       caption = "Source: Gapminder") + 
  scale_x_log10()
