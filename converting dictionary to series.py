#QUESTION
#Write a Pandas program to convert a dictionary to a Pandas series.

import pandas as pd
dictionary={590:"ganesh",591:"naveen",592:"appi",593:"suppi"}
print("Dictionary is :",dictionary)
print("type ",type(dictionary))
print("\n\nconverting dictionrary to pandas series")
print(pd.Series(dictionary))
print(type(pd.Series(dictionary)))

#OUTPUT
"""
Dictionary is : {590: 'ganesh', 591: 'naveen', 592: 'appi', 593: 'suppi'}
type  <class 'dict'>


converting dictionrary to pandas series
590    ganesh
591    naveen
592      appi
593     suppi
dtype: object
<class 'pandas.core.series.Series'>
"""