# Date: 09.04.2021
# Author: B.E. Schofield
# File name: 'session4.R'
# Description: Example script used to practice using Git and best coding practices
# Project: Key Practices for the Language Scientist 2021


# ---- Change log ----

# Date: 09.04 

# Change by: B.E. Schofield

# Change: changed the layout and added header to script, added notes to script, created sections of code

# Purpose: Clean up script as per homework instructions


# ---- load packages ----

library(package)
library(here)

# ---- data parameters ----

# check workspace to ensure file in project path
file_path <- here::here()

# set working directory (if needed) and load data

setwd("directory")
example_data <- read.delim("data.csv", header = TRUE, sep = ",")

# ---- data analysis ----

# Make variables ready to work on, e.g.:
example_data <- example_data %>%
  select(ppID, condition, trial, RT) %>%
  mutate(condition = as.factor(condition), target = as.factor(target))
example_data <- na.omit(example_data)

# Explore data
summary(example_data)

# Within-subjects one-way ANOVA Analysis (can be a simple analysis), e.g. a one-way ANOVA, within-subjects:
anovaRT_by_category <- aov(RT ~category+error(ppID/category), data = analysis_anova)
summary(anovaRT_by_category)
