# Multiple Linear Regression
# Importing the Dataset
dataset = read.csv('50_Startups.csv')
library(caTools)
set.seed(123)

# Enconding Categorial data
dataset$State = factor(dataset$State, 
                       levels = c('New York', 'California', 'Florida'),
                       labels = c(1, 2, 3))

split = sample.split(dataset$Profit, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Fitting Multiple Linear Regression
regressor = lm(formula = Profit ~ .,
               data = training_set)

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)

# Building the optimal model using Backward Elimination
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State, 
                data = dataset)

regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend, 
               data = dataset)

regressor = lm(formula = Profit ~ R.D.Spend + Marketing.Spend, 
               data = dataset)

regressor = lm(formula = Profit ~ R.D.Spend, 
               data = dataset)

summary(regressor)
# Checked the summary(regressor) and R.D.Spend  is the most important dependent variable
# regressor = lm(formula = Profile ~ R.D.Spend, data = training_set)
