# Load packages
library(tidyverse)
library(showtext)
library(readxl)

# Load fonts
font_add_google(name = "Source Sans Pro", family = "SourceSansPro")
showtext_auto()

# Set working directory for Mac
setwd("~/OneDrive - University Of Massachusetts Medical School/github_sync/ahaan")

# Set working directory for Windows
setwd("C:/Users/shubh/OneDrive - University Of Massachusetts Medical School/github_sync/ahaan")

# Load ggplot personal theme
source("ggplot2_personal_theme.R")

# Load Ahaan's data
ahaan <- read_excel("ahaan.xls", col_types = c("date", "numeric", "numeric", "numeric", "numeric"))

# Restructure data
ahaan_df <- pivot_longer(ahaan, cols = -date, names_to = "params", values_to = "values")

# Height plot
ggplot(data = ahaan) +
  geom_line(aes(x = date, y = height_in), color = "#ffffff") +
  geom_point(aes(x = date, y = height_in), color = "#ffffff", shape = 21, fill = "#36474f", stroke = 1, size = 3) +
  ylim(18, 21) +
  shubham_theme_dark() +
  labs(title = "Ahaan's Height (inches)",
       x = NULL,
       y = "\nheight (in)\n")

# Weight plot
ggplot(data = ahaan) +
  geom_line(aes(x = date, y = weight_lb), color = "#ffffff") +
  geom_point(aes(x = date, y = weight_lb), color = "#ffffff", shape = 21, fill = "#36474f", stroke = 1, size = 3) +
  ylim(0, 10) +
  shubham_theme_dark() +
  labs(title = "Ahaan's Weight (pounds)",
       x = NULL,
       y = "\npounds (lb)\n")

# BMI plot
ggplot(data = ahaan) +
  geom_line(aes(x = date, y = bmi), color = "#ffffff") +
  geom_point(aes(x = date, y = bmi), color = "#ffffff", shape = 21, fill = "#36474f", stroke = 1, size = 3) +
  ylim(0, 15) +
  shubham_theme_dark() +
  labs(title = "Ahaan's BMI",
       x = NULL,
       y = "\nBMI\n")

# Head circumference plot
ggplot(data = ahaan) +
  geom_line(aes(x = date, y = head_circ_cm), color = "#ffffff") +
  geom_point(aes(x = date, y = head_circ_cm), color = "#ffffff", shape = 21, fill = "#36474f", stroke = 1, size = 3) +
  ylim(20, 50) +
  shubham_theme_dark() +
  labs(title = "Ahaan's Head circumference (cm)",
       x = NULL,
       y = "\nHead circumference (cm)\n")

# Plot all parameters
ggplot(data = ahaan_df) +
  geom_line(aes(x = date, y = values, group = params, color = params)) +
  geom_point(aes(x = date, y = values, color = params), size = 3.0, shape = 21, fill = "#36474f") +
  ylim(-0.5, 40) +
  scale_color_manual(values = shubham_palette_dark) +
  #facet_wrap(~params) +
  shubham_theme_dark() +
  labs(title = "Ahaan's Progress",
       x = NULL,
       y = "\nParameter values\n") +
  scale_color_discrete(name = "Parameters", labels = c("BMI", "Head (cm)", "Height (in)", "Weight (lb)"))

                       