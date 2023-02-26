#QUESTION
#Write a Pandas program to convert a NumPy array to a Pandas series.

import pandas as pd
import numpy as np
numpy_array=np.array([23,2432,24354,2332,232])
print("numpy array is : ",numpy_array)
print("type of numpy array is : ",type(numpy_array))
print("\nconverting numpy array to pandas series :")
pandas_series=pd.Series(numpy_array)
print(pandas_series)
print("\ntype of pandas series\n",type(pandas_series))

#OUTPUT

"""
numpy array is :  [   23  2432 24354  2332   232]
type of numpy array is :  <class 'numpy.ndarray'>

converting numpy array to pandas series :
0       23
1     2432
2    24354
3     2332
4      232
dtype: int32

type of pandas series
 <class 'pandas.core.series.Series'>
"""