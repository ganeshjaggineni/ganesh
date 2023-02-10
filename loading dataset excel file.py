#importing libraries
import pandas as pd
#loading dataset download from kaggle website
dataset=pd.read_excel("D:\\ganesh python\\netflix.xlsx")
#printing dataset
print(dataset)
#displaying top 5 rows
print("\n\n\ndisplay 5 rows from top")
print(dataset.head())

#output
                            Name    Year Age Rating Duration  \
0                  The Sea Beast  2022.0         7+   1h 59m   
1             Sonic the Hedgehog  2020.0         7+   1h 41m   
2                  Tom and Jerry  2021.0         7+   1h 41m   
3               We Can Be Heroes  2020.0         7+   1h 40m   
4         STAND BY ME Doraemon 2  2020.0         7+   1h 37m   
...                          ...     ...        ...      ...   
2724                         Mom  2017.0        16+   2h 18m   
2725  The Legend of Bhagat Singh  2002.0        16+   2h 35m   
2726                  Article 15  2019.0        16+    2h 5m   
2727               We Are Family  2010.0        13+   1h 58m   
2728             Ajeeb Daastaans  2021.0        18+   2h 22m   

                       Category     Count of Year Column Labels Unnamed: 8  \
0          Kids & Family Movies NaN    Row Labels           13+        18+   
1          Kids & Family Movies NaN          2021           100        103   
2          Kids & Family Movies NaN          2020            75         86   
3          Kids & Family Movies NaN          2022            78         64   
4          Kids & Family Movies NaN          2019            76         75   
...                         ...  ..           ...           ...        ...   
2724                     Dramas NaN           NaN           NaN        NaN   
2725  Movies Based on Real Life NaN           NaN           NaN        NaN   
2726                     Dramas NaN           NaN           NaN        NaN   
2727                     Dramas NaN           NaN           NaN        NaN   
2728                     Dramas NaN           NaN           NaN        NaN   

     Unnamed: 9 Unnamed: 10 Unnamed: 11  Unnamed: 12  Unnamed: 13  \
0           16+          7+         All         16.0          NaN   
1            97          67          10          4.0          NaN   
2            80          59          20          8.0          NaN   
3            91          28           8          8.0          NaN   
4            69          35           9          4.0          NaN   
...         ...         ...         ...          ...          ...   
2724        NaN         NaN         NaN          NaN          NaN   
2725        NaN         NaN         NaN          NaN          NaN   
2726        NaN         NaN         NaN          NaN          NaN   
2727        NaN         NaN         NaN          NaN          NaN   
2728        NaN         NaN         NaN          NaN          NaN   

      Unnamed: 14  Unnamed: 15 Unnamed: 16  Unnamed: 17  
0            12.0         14.0       TV-MA  Grand Total  
1             6.0          1.0         NaN          388  
2             1.0          1.0         NaN          330  
3             NaN          1.0         NaN          278  
4             1.0          NaN         NaN          269  
...           ...          ...         ...          ...  
2724          NaN          NaN         NaN          NaN  
2725          NaN          NaN         NaN          NaN  
2726          NaN          NaN         NaN          NaN  
2727          NaN          NaN         NaN          NaN  
2728          NaN          NaN         NaN          NaN  

[2729 rows x 18 columns]



display 5 rows from top
                     Name    Year Age Rating Duration              Category  \
0           The Sea Beast  2022.0         7+   1h 59m  Kids & Family Movies   
1      Sonic the Hedgehog  2020.0         7+   1h 41m  Kids & Family Movies   
2           Tom and Jerry  2021.0         7+   1h 41m  Kids & Family Movies   
3        We Can Be Heroes  2020.0         7+   1h 40m  Kids & Family Movies   
4  STAND BY ME Doraemon 2  2020.0         7+   1h 37m  Kids & Family Movies   

      Count of Year Column Labels Unnamed: 8 Unnamed: 9 Unnamed: 10  \
0 NaN    Row Labels           13+        18+        16+          7+   
1 NaN          2021           100        103         97          67   
2 NaN          2020            75         86         80          59   
3 NaN          2022            78         64         91          28   
4 NaN          2019            76         75         69          35   

  Unnamed: 11  Unnamed: 12  Unnamed: 13  Unnamed: 14  Unnamed: 15 Unnamed: 16  \
0         All         16.0          NaN         12.0         14.0       TV-MA   
1          10          4.0          NaN          6.0          1.0         NaN   
2          20          8.0          NaN          1.0          1.0         NaN   
3           8          8.0          NaN          NaN          1.0         NaN   
4           9          4.0          NaN          1.0          NaN         NaN   

   Unnamed: 17  
0  Grand Total  
1          388  
2          330  
3          278  
4          269  