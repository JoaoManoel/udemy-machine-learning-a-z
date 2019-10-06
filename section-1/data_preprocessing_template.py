#Importing the libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

# Importing the dataset
dataset = pd.read_csv('Data.csv')
X = dataset.iloc[:, :-1].values
y = dataset.iloc[:, 3].values

# Taking care of missing data

# deprecated

#from sklearn.preprocessing import Imputer
#imputer = Imputer(missing_values='NaN', strategy='mean', axis=0)
#imputer = imputer.fit(X[:, 1:3])
#X[:, 1:3] = imputer.transform(X[:, 1:3])

# SimpleImputer
from sklearn.impute import SimpleImputer
imputer = SimpleImputer(missing_values= np.nan, strategy='mean')
imputer = imputer.fit(X[:, 1:3])
X[:, 1:3] = imputer.transform(X[:, 1:3])

# Enconding categorical data
from sklearn.preprocessing import LabelEncoder, OneHotEncoder
onehotencoder = OneHotEncoder(categorical_features = [0])
labelencoder_x = LabelEncoder()
labelencoder_y = LabelEncoder()

# First, we need to change Categorical String to a int value
# eg: France -> 0; Span -> 1; Germany -> 2
# then OneHotEncoder will change 0 to 0 0 1; 1 to 0 1 0; 2 to 1 0 0
X[:, 0] = labelencoder_x.fit_transform(X[:, 0])
X = onehotencoder.fit_transform(X).toarray()

y = labelencoder_y.fit_transform(y)

# Slipitting the dataset into the Training set and Test set
from sklearn.model_selection import train_test_split
train_test_split(X, y, test_size = 0.2, random_state = 0)



