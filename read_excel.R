#Reading Excel data sheet in R.
install.packages("xlsx") #installing xlsx package
library("xlsx")
excel_data=read.Xlsx("Movie-list.xlsx")   #reading data using read.xlsx function
print(excel_data)  #printing readed data


install.packages("readxl")   #installing readxl package
library("readxl")
data=read_excel("C:\\Users\\ganes\\Rsoftwares\\Movie-list.xlsx")    #reading excel file
print(data)  #printing the excel data
