#QUESTION
#Write a Pandas program to compare the elements of the two Pandas Series.

import pandas as pd 
dataset1=pd.Series([12,234,24,25,53])
dataset2=pd.Series([33,24,423,25,21])
print("\nequal comparision :")
print(dataset1==dataset2)
print("\ngreater than comparision :")
print(dataset1>dataset2)
print("\nlesst than comparision")
print(dataset1<dataset2)

#OUTPUT
"""

equal comparision :
0    False
1    False
2    False
3     True
4    False
dtype: bool

greater than comparision :
0    False
1     True
2    False
3    False
4     True
dtype: bool

lesst than comparision
0     True
1    False
2     True
3    False
4    False
dtype: bool
"""