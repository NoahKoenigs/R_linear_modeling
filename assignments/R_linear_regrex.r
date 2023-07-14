#Package Install
install.packages ("ggplot2")
library ggplot2

#Import dataset
dataset = read.csv ("regrex1.csv")
print(dataset)
model = lm(formula = x ~ y, data = dataset)

#Scatterplot
library (ggplot2) 

ggplot() +
    geom_point(aes(x = dataset$ x, y = dataset$ y),color = 'orange')

#Line Graph
library (ggplot2) 
ggplot() +
geom_line(aes(x = dataset$x, y = predict(model, newdata = dataset)),
                color = 'green')
#Linear Model
library(ggplot2) 
ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y), color = 'orange') +
  geom_line(aes(x = dataset$x, y = predict(model, newdata = dataset)), color = 'green') +
  ggtitle("x vs y")


