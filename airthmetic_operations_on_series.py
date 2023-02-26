#QUESTION
#rite a Pandas program to add, subtract, multiple and divide two Pandas Series.
import pandas
series1=pandas.Series([10,20,30])
series2=pandas.Series([100,200,300])
print("\nAdditon Of Series:\n",series1+series2);
print("\nSubtraction Of Series:\n",series1-series2);
print("\nMultiplication Of Series:\n",series1*series2);
print("\nDivision Of Series:\n",series1/series2);

#OUTPUT
"""
Additon Of Series:
 0    110
1    220
2    330
dtype: int64

Subtraction Of Series:
 0    -90
1   -180
2   -270
dtype: int64

Multiplication Of Series:
 0    1000
1    4000
2    9000
dtype: int64

Division Of Series:
 0    0.1
1    0.1
2    0.1
dtype: float64
"""