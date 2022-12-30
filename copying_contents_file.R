#Write R script to copy file contents from one file to another
install.packages("readr")   #installing package readr to perform operations on files
library("readr")
read_data=read_file("C:\\Users\\ganes\\Desktop\\EMP.txt")   #reading emp.txt file which is available on my laptop by using read_file() available in readr package
print(read_data)  #printing data on console

write_data=write_file(read_data,"ganeshjaggineni.txt")  #copying contents into another file

showing_result=read_file("ganeshjaggineni.txt")  #To Verify Whether the file is copied or not we crosscheck by again reading the file which we already written contents using the program
print(showing_result)
