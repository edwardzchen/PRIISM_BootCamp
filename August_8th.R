


coin <- c(1, 0)
sample(coin, 10, replace = T)


# Looping
n <- 100
x <- 1:n
s <- 0

for (i in 1:n) {
  if (i %% 2 == 0){
    s <- s + x[i]
  }
}

s
