setwd("C:\\Users\\FarkasCsilla\\Downloads\\workspace\\Rcoding_CEU\\lecture_7")


data1 <- read_csv("test-data1.csv", col_names = FALSE)

(data2 <- read_csv("test-data2.csv", col_types = cols(id = col_integer())))

data3 <- read_csv("test-data3.csv", col_types = cols(amound = col_integer(),
                                                     also_amound = col_integer()))

stocks <- tibble(
  year   = c(2015, 2015, 2016, 2016),
  half  = c(   1,    2,     1,    2),
  return = c(1.88, 0.59, 0.92, 0.17)
)

tidy_stocks <- (stocks %>%
                  spread(key = "half", value = 'return'))



  