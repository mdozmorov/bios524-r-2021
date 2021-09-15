# dplyr tutorial
# Amanda Gentry and Mikhail Dozmorov, Ph.D.
# http://www.sharpsightlabs.com/dplyr-intro-data-manipulation-with-r/

library(dplyr)
library(ggplot2)

# The pipe %>% operator
# Remember that the %>% operator says "take ____ and then do ___ and then do ___ etc."
head(diamonds) 
diamonds %>% head

# See that the "." works as a sort of placeholder
summary(diamonds$price)
diamonds$price %>% summary(object = .)

# dplyr::filter()
diamonds %>% head

df.diamonds_ideal <- filter(diamonds, cut == "Ideal")
df.diamonds_ideal <- diamonds %>% filter(cut == "Ideal")

# dplyr::select()
df.diamonds_ideal %>% head

select(df.diamonds_ideal, carat, cut, color, price, clarity)
df.diamonds_ideal <- df.diamonds_ideal %>% select(., carat, cut, color, price, clarity)

# dplyr::mutate()
df.diamonds_ideal %>% head

mutate(df.diamonds_ideal, price_per_carat = price/carat)
df.diamonds_ideal <- df.diamonds_ideal %>% mutate(price_per_carat = price/carat)

# dplyr::arrange()
df.diamonds_ideal %>% head

arrange(df.diamonds_ideal, price)
df.diamonds_ideal %>% arrange(price, price_per_carat)

# dplyr::summarise()
summarize(df.diamonds_ideal, length = n(), avg_price = mean(price))
df.diamonds_ideal %>% summarize(length = n(), avg_price = mean(price))

# dplyr::group_by()
group_by(diamonds, cut) %>% summarize(mean(price))
group_by(diamonds, cut, color) %>% summarize(mean(price))

# The power of pipe %>%
# See that the same task may be accomplished in multiple ways
# Combining the functions of dplyr and the pipe, your code can
# be made easier to read and understand
# -------------------------------------#
# Understand this
arrange(mutate(arrange(filter(tbl_df(diamonds), cut == "Ideal"), price), price_per_carat = price/carat), price_per_carat)

# Compare with this
arrange(
  mutate(
    arrange(
      filter(tbl_df(diamonds), cut == "Ideal"), 
    price), 
  price_per_carat = price/carat), 
price_per_carat)

# Enjoy the logic of this
diamonds %>% filter(cut == "Ideal") %>% arrange(price) %>% mutate(price_per_carat = price/carat) %>% arrange(price_per_carat)

