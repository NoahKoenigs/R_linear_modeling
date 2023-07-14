#!/usr/env/binbash/assignments

## Package Install
install.packages ("ggplot2")

## Importong CSV file
dataset = read.csv ("regrex1.csv")
print(dataset)
model = lm(formula = y ~ x, data = dataset)

#Scatterplot
library (ggplot2) 
ggplot() +
    geom_point(aes(x = dataset$ x, y = dataset$ y),color = 'orange')
ggsave(filename = "scatterplot.png", plot = linegraph)

#Lineplot
### does not print png!
library (ggplot2) 
ggplot() +
geom_line(aes(x = dataset$x, y = predict(model, newdata = dataset)),
                color = 'green')

# Regression model with summary
library(ggplot2) 
ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y), color = 'orange') +
  geom_line(aes(x = dataset$x, y = predict(model, newdata = dataset)), color = 'green') +
  ggtitle("x vs y")
ggsave(filename = "Regression.png", plot = linegraph)
summary(model)



