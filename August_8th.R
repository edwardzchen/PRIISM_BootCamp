


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


# Session 2
# Lines
# y = 1 + 2x
ggplot() + xlim(0, 5) + ylim(0, 10) + 
  geom_abline(slope = 2, intercept = 1, size = 0.2)

# y = 7.5 - 2x
ggplot() + xlim(0, 5) + ylim(0, 10) + 
  geom_abline(slope = -2, intercept = 7.5, size = 0.2)

# Exponential Functions
# The rate of change of the function at time t is proportional to the value of the fucntion at time t
# Example in Compound Interest
rate <- 0.05
P <- 100
n_comp <- 1:100

Pn <- function(n, A, r, t){
  A * (1 + r/n)^(t*n)
}
Pe <- function(A, r, t){
  A*exp(r * t)
}

pn <- Pn(n = n_comp, A = P, r = rate, t = 50)
pe <- Pe(A = P, r = rate, t = 50)

d <- data.frame()

# Practice
"Suppose a population of bacteria is known to double in size every 4 hours, 
if the population start with 1000, what will be the population in 10 hours and 24 hours"

initial_population <- 1000
doubling_time <- 4

population_10 <- initial_population * (2^(10 / doubling_time))
population_24 <- initial_population * (2^(24 / doubling_time))

# Number e
my_e <- function(m) {
  return((1+1/m)^m)
}
replicate(1e3, my_e(1e4)) %>% mean()

out <- numeric()
for (i in 1:1e3){
  out[i] <- my_e(i) 
}

some_df3 <- data.frame(x = 1:1e3, y = out)
ggplot(some_df3) + geom_point(aes(x = x, y = y), alpha = 0.5)


2^4 / 3^4 == (2/3)^4 # R precision problem
all.equal(2^4 / 3^4, (2/3)^4)


# Logarithmic functions
# f = a^x



