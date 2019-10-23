# Decision Tree Regression

# Libraries
library(ggplot2)
library(rpart)

# Importing dataset
dataset = read.csv('Position_Salaries.csv')
dataset = dataset[2:3]

# Fitting The Decision Tree Regressor to the dataset
regressor = rpart(formula = Salary ~ .,
                  data = dataset,
                  control = rpart.control(minsplit = 1))

# Predicting a new result
y_pred = predict(regressor, data.frame(Level = 6.5))

# Visualising the Decision Tree Regression Results
x_grid = seq(min(dataset$Salary), max(dataset$Salary), 0.01)

ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary), 
             colour = 'red') +
  geom_line(aes(x = x_grid, y = predict(regressor, newdata = data.frame(Level = x_grid))), 
            colour = 'blue') +
  ggtitle('Truth or Bluff (Decision Tree)') +
  xlab('Level') +
  ylab('Salary')

