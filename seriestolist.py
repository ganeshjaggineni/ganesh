#QUESTION
#Write a Pandas program to convert a Panda module Series to Python list and it's type.
import pandas 
series=pandas.Series([12,23,323,5])
print(series)
print(type(series))
series_to_list=series.tolist()
print("\n",series_to_list)
print(type(series_to_list))

#OUTPUT
"""
0     12
1     23
2    323
3      5
dtype: int64
<class 'pandas.core.series.Series'>

 [12, 23, 323, 5]
<class 'list'>
"""