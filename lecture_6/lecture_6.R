
ceci_nest_pas_a_tibble <- iris
is_tibble(ceci_nest_pas_a_tibble)
ceci_nest_pas_a_tibble

a_tibble <- as_tibble(ceci_nest_pas_a_tibble)
a_tibble

t.test(a_tibble$Sepal.Length)

df <- tibble(
  x = runif(100),
  y = runif(100, min = -.5, max = .5),
  z = rnorm(100)
)

t.test(df$x, df$y)

df %>% .$x

df %>% .$x %>% t.test()


test_data1 <- read_csv('lecture6/test-data.csv')

  