#Trang Tran, ALY6010, Module 3
cat("\014")  # clears console
rm(list = ls())  # clears global environment
try(dev.off(dev.list()["RStudioGD"]), silent = TRUE) # clears plots
try(p_unload(p_loaded(), character.only = TRUE), silent = TRUE) # clears packages
options(scipen = 100) # disables scientific notion for entire R session

library(pacman)
p_load(tidyverse)
p_load(gmodels)
p_load(skimr)

head(mtcars)
summary(mtcars)
skim(mtcars)

#a one-tailed t-test for mean
t.test(mtcars$wt, mu = 3.0, alternative = "greater")

#a two-tailed t-test for mean
t.test(mtcars$qsec, mu = 19, conf.level = 0.99)

#a t-test of your choosing for mean
t.test(mtcars$disp, mu = 250, alternative = "less")
