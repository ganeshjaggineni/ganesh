#Write an R script to find subset of dataset by using subset (), 
#aggregate () functions on iris dataset
data=read.csv("C:\\Users\\ganes\\Rsoftwares\\cyber_salaries.csv")
print(data)
print(head(data))
sub_data=subset(data,select="work_year")
print(head(sub_data))

#aggregate function
data_aggregate=aggregate(sub_data,by=list(sub_data$work_year),FUN=min)
print(data_aggregate)      



flower_data=iris
print(flower_data)
print(head(flower_data))
flower_(flower_subset)subset=subset(flower_data,select=c("Sepal.length","petal.Length")
print
                     
