


coin <- c(1, 0)
sample(coin, 10, replace = T)


# Looping
n <- 100
x <- 1:n
s <- 0

# Summing all even nums
for (i in 1:n) {
  if (i %% 2 == 0){
    s <- s + x[i]
  }
}
# Test
s == sum(seq(2, 100, 2))

# Coin flip simulation
set.seed(123)
n <- 1e4
est_prop <- numeric(n)
for (i in 1:n) {
  x <- sample(coin, i, replace = T)
  est_prop[i] <- mean(x)
}

library(ggplot2)
library(gridExtra)
some_df <- data.frame(x = est_prop, y = 1:n)
ggplot(some_df) + geom_point(aes(x = y, y = x))

# Function
estimate_proportion <- function(n) {
  coin <- c(1, 0)
  x <- sample(coin, n, replace = T)
  est <- mean(x)
  return(est)
}

estimate_proportion(10)

x <- replicate(1e3, estimate_proportion(10))
head(x)
hist(x)

# Generating Continuous Uniform Draws
hist(runif(1e4, 1, 1000))

# Estimating pi by Simulation
n <- 1e3
x <- runif(n, -1, 1); y <- runif(n, -1, 1)
inside <- x^2 + y^2 < 1
data <- tibble(x, y, inside)
ggplot(aes(x = x, y = y), data = data) + geom_point(aes(color = inside))

cat("Pi is =", 4*sum(inside)/n) # number of dots inside of the circle vs outside



# Practice
estimate_proportion2 <- function(n, bias = 0.5) {
  coin <- c(1, 0)
  x <- sample(coin, n, prob = c(bias, 1-bias), replace = T)
  est <- mean(x)
  return(est)
}

replicate(1e3, estimate_proportion2(1e4, 0.3)) %>% mean()









