library(gtools)
library(tidyverse)
library(dplyr)
library(ggplot2)

set.seed(16, sample.kind="Rounding")

set.seed(16)


F <- function(x) mean(act_scores <= x)

sapply(1:36, F)

qnorm(0.95, 20.9, 5.7)


p <- seq(0.01, 0.99, 0.01)

sample_quantile <- quantile(act_scores, p)
sample_quantile


theoretical_quantiles <- qnorm(p, 20.9, 5.7)
theoretical_quantiles

ggplot(aes(x = theoretical_quantiles, y = sample_quantile)) + geom_point()


plot(theoretical_quantiles, sample_quantile)
qplot(theoretical_quantiles, sample_quantile) + geom_abline()
