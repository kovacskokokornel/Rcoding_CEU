# Script for lecture 5



# Today: group_by() and summarise()
# Summary functions

(x <- 1:100)
mean(x)
median(x) ## robust to extreme values
std(x)
IQR(x)
mad(x)

quantile(x)
quantile(x, 0.8)

z <- c(0,0,0,0,0,0,1,2,100,100)

quantile(z, 0.5)


# Counts

library(nycflights13)

not_missing <- flights %>%
  filter(!is.na(arr_time), !is.na(dep_time)) %>%
  filter(!is.na(arr_delay), !is.na(dep_delay))

not_missing %>%
  group_by(dest) %>%
  summarise (
    count = n()
  )

not_missing %>%
  count(dest)

not_missing %>%
  group_by(dest) %>%
  summarise (
    carriers = n_distinct(carrier)
  ) %>%
  arrange(desc(carriers))

not_missing %>%
  count(tailnum, wt = distance) %>%
  arrange(desc(n))

not_missing %>%
  group_by(year, month, day) %>%
  summarise(sum(dep_time < 500))


# Worst 10 arrivals for every day according to arr_delay

flights_small <- flights %>%
  select(year:day, starts_with("arr"), starts_with("dep"))

flights_small %>%
  group_by(year, month, day) %>%
  mutate(delay_rank = rank(desc(arr_delay))) %>%
  filter(delay_rank <= 2)

(popular_destinations <- flights %>%
  group_by(dest) %>%
  filter(n() > 365))


diamonds %>%
  ggplot(mapping = aes(x = carat)) + 
  geom_histogram(binwidth = 0.5)


diamonds %>%
  mutate(interval = cut_width(carat, 0.5)) %>%
  group_by(interval) %>%
  summarise(n = n())

x <- 1:10
ifelse(x %% 2 == 0, 'even', 'odd')

case_when(
  x %% 3 == 0 ~ 'divisible by 3',
  x %% 2 == 0 ~ 'divisible by 2'
)


