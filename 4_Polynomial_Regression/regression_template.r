# Regression Template

# Libraries
library(ggplot2)

# Importing dataset
dataset = read.csv('')
dataset = dataset[]

# Fitting Regression model to the dataset
# Create your regressor
regressor

# Predicting a new result with Polynomial Regression
y_pred = predict(regressor, data.frame( = ))

# Visualising the Regression model results
ggplot() +
  geom_point(x = , y = , colour = 'red') +
  geom_line(aes(x = , y = predict(regressor, newdata = )),
            colour = 'blue') +
  ggtitle('') +
  xlab('') +
  ylab('')

# Visualising the Regression Model Results (for higher resultions and smoother curve)
x_grid = seq(min(), max(), 0.1)
ggplot() +
  geom_point(x = , y = , colour = 'red') +
  geom_line(aes(x = x_grid, y = predict(regressor, newdata = data.frame(? = x_grid))),
            colour = 'blue') +
  ggtitle('') +
  xlab('') +
  ylab('')
