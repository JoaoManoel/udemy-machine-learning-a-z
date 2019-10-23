# SVR

# Libraries
library(ggplot2)
library(e1071)

# Importing dataset
dataset = read.csv('Position_Salaries.csv')
dataset = dataset[2:3]

# Fitting The SVR to the dataset
regressor = svm(formula = Salary ~ .,
                data = dataset,
                type = 'eps-regression')

y_pred = predict(regressor, data.frame(Level = 6.5))
  
# Visualising the Linear Regression Results
ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary),
             colour = 'red') +
  geom_line(aes(x = dataset$Level, y = predict(regressor, newdata = dataset)),
            colour = 'blue') +
  ggtitle('Truth or Bluff (SVR)') +
  xlab('Level') +
  ylab('Salary')

