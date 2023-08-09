# Logarithmic 
# softmax function
y <- 1:3
numer <- exp(y)
denom <- sum(exp(y))
softmax <- numer / denom # proportion/weights

y <- c(1e3, 1e3+1, 1e3+2)
exp(y) # this produces overflow - numbers are too big for the computer

# log softmax
LSE <- function(x) {
  c <- max(x)
  y <- c + log(sum(exp(x - c)))
  return(y)
}

log_softmax <- function(x) {
  x - LSE(x)
}

softmax_unsafe <- function(x) exp(x)/sum(exp(x))

softmax_unsafe(1:3)
exp(log_softmax(1:3)) # bring back the actual softmax

softmax_unsafe(y) # large numbers won't work
exp(log_softmax(y)) # work

# Limits








