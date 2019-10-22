# Random Forest Regression

# Libraries
library(ggplot2)
library(rpart)
library(randomForest)
set.seed(1234)

# Importing dataset
dataset = read.csv('Position_Salaries.csv')
dataset = dataset[2:3]

regressor = randomForest(x = dataset[1],
                         y = dataset$Salary,
                         ntree = 500)

y_pred = predict(regressor, data.frame(Level = 6.5))

X_grid = seq(min(dataset$Level), max(dataset$Level), 0.01)
ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary), 
             colour = 'red') +
  geom_line(aes(x = X_grid, y = predict(regressor, newdata = data.frame(Level = X_grid))),
            colour = 'blue') +
  ggtitle('Truth or Bluff (Random Forest Regression)') +
  xlab('Level') +
  ylab('Salary')