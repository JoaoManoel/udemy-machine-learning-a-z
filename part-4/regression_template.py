# Regression Template

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Importing the dataset
dataset = pd.read_csv('XXXX.csv')
X = dataset.iloc[:, 1:2].values
y = dataset.iloc[:, 2].values

# Fitting the Regression model to the dataset
# Create your regressor HERE

# Predict a new result with Linear Regression
y_pred = regressor.predict([ 6.5 ])

# Visualising the Regression results
plt.scatter(X, y, color = 'red')
plt.plot(X, regressor.predict(X), color = 'blue')
plot.title('')
plot.xlabel('')
plot.ylabel('')
plt.show()


# Visualising the Regression results (for higher resolution and smoother curve)
X_grid = np.arange(min(X), max(X), 0.1)
X_grid = X_grid.reshape({len(X_grid, 1)})

plt.scatter(X, y, color = 'red')
plt.plot(X_grid, regressor.predict(X_grid), color = 'blue')
plot.title('')
plot.xlabel('')
plot.ylabel('')
plt.show()