p <- 5/38
notP <- 1 - p
a <- 6
b <- -1
n <- 500

mu <- a*p+b*notP
sigma <- abs(b-a) * sqrt(p*notP)

mu*500

sigma*sqrt(n)


pnorm(0, mu*500, sigma*sqrt(500))
