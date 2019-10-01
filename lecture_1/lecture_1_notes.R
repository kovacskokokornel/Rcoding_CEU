# wrgsovcn
2
4 + 7
7 / 3
8 %% 3
2^76

# Pre-defivariables
pi
"pi"
"pi" == "pi"
TRUE

# Pre-defined functions
c

# Everything is an object

new_object <- "I am a fancy object"
new_object

koko_new_object_combined <- c(new_object, "Some apples")
koko_new_object_combined

list_of_programming_languages <- c(
  "R",
  "SQL",
  "Racket",
  "Lisp",
  "JavaScript",
  "ECMAScript",
  "bash",
  "C",
  "Perl",
  "Logo",
  "Scratch"
)

languages_heard_of <- c(11, 5, 6, 6, 4, 8, 9, 10, 4, 6)
languages_heard_of

# Use functions

mean(c(0,10))
mean(languages_heard_of)

# Functions with packages

library(ggplot2)
ggplot()

# Figuring out what is what

x <- c(1, 3.0, 2.9)
x
str(x)
y <- c(1, "2")
str(y)

class(y)
summary(languages_heard_of)

# Make first figures

library(gapminder)
install.packages("gapminder")

gapminder

plot(gapminder$gdpPercap, gapminder$lifeExp)
p <- ggplot(data = gapminder, 
            mapping = aes (x = gdpPercap, y = lifeExp))
p + geom_point()
