
library(detectnorm)
set.seed(341031)
a <- rnonnorm(n = 50, mean = 10, sd = 2, skew = 3, kurt = 2)$dat
b <- rnonnorm(n = 50, mean = 10, sd = 2, skew = -3, kurt = 2)$dat
c <- rnorm(n = 50, mean = 10, sd = 2)

conc<-c(a,b,c)
fish_group = rep(c('a', 'b', 'c'), each = 50)
white_cell<-data.frame(cbind(conc,fish_group))
write.csv(white_cell,"white_cell.csv")
