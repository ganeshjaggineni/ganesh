import pandas
series=pd.Series([12,24,48,"gani",23.23,'s',"eswar"])
print("The Original Series :\n",series)
print("\nThe Data Type Of Series :",type(series))
print("\nConverting Into Numeric Datatype")
series_to_numeric=pd.to_numeric(series,errors="coerce")
#errors=coerce is used for putting nan values when invalid parsing is done
#example here we are trying to convert string 'gani' into number ,but it is not possible ,so nan value is substitued in that place
print(series_to_numeric)

#OUTPUT
"""
The Original Series :
 0       12
1       24
2       48
3     gani
4    23.23
5        s
6    eswar
dtype: object

The Data Type Of Series : <class 'pandas.core.series.Series'>

Converting Into Numeric Datatype
0    12.00
1    24.00
2    48.00
3      NaN
4    23.23
5      NaN
6      NaN
dtype: float64

"""