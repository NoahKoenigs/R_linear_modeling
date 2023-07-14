#Package Install
library(ggplot2)
install.packages ("ggplot2")
install.packages("mvtnorm", repos='http://cran.us.r-project.org')
require(mvtnorm)

#Import dataset
dataset <- read.csv ("regrex1.csv")
print(dataset)

#Fit the linear regression model
model <- lm(x ~ y, data = dataset)

#Scatterplot
library (ggplot2) 
ggsave(filename = "Scatterplot.png",plot = scatterplot)
ggplot() +
    geom_point(aes(x = dataset$ x, y = dataset$ y),color = 'orange')
dev.off()

#Linear Model
library(ggplot2)
ggsave(filename = "linear_regression.png",plot = scatterplot)
ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y), color = 'orange') +
  geom_line(aes(x = dataset$x, y = predict(model, newdata = dataset)), color = 'green') +
  ggtitle("x vs y")
dev.off ()



