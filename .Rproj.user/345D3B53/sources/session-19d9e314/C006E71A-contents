
library(tidyverse)

## Basics
1:10 # produce sequence 
sin(pi/2) + cos(pi/2)

1i

round(exp(1i * pi) + 1) # work with complex number
exp(1i * pi) + 1 # tiny
(exp(1i * pi) + 1) |> round() # "|>" is same as "%>%"

die <- 1:6
die <- seq(1, 6, by = 1)
die
# seq(1, 6, length = 1000)

length(die)
str(die) # string of nums, with a length
sum(die)
cumsum(die)
prod(die)

mean(die)
sum(die) / length(die)

median(die) # for skewed data
sd(die)

# R Documentation
?mean()

# Practice
fib <- c(0, 1, 1, 2, 3, 5, 8, 13, 21, 34)

length(fib)

sum(fib)
prod(fib)
diff(fib) # the diff is the repcceding term

some_vec <- 1:100
N <- length(some_vec)
N * (N + 1) / 2 == sum(some_vec)
sum(some_vec^2)

# Lists
list_x <- list(A = pi, B = c(0, 1), C = 1:10, D = c("one", "two"))
list_x
str(list_x)

list_x$A
list_x[[1]]
list_x[1]$A

# Data Frame
library(HistData)
head(Virginis.interp)
temp <- as.tibble(Virginis.interp)

# Plot
mean(temp$velocity)
clf <- ifelse(Snow.dates$date < mdy(09/08/1854), "red", "green")

plot(deaths ~ date, data = Snow.dates,
     type = "h", lwd = 2, color = clf, xlab = "")

# Simulating Coin Flips
coin <- c("H", "T")
sample(coin, 10, replace = T)
sample(coin, 10, replace = T, prob = c(0.6, 0.4))



