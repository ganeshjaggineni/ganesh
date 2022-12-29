#Implement R Script to create a Pie chart, Bar Chart, scatter plot and Histogram using ggplot2 graphics
data<-c(12,23,32,42);
library(plotrix);
#png(file="barcharttt.png");
barplot(data,xlab="ganesh",col="blue",col.lab="green",col.axis="pink",main="ganesh jaggineni");
dev.off();


#pie chart
piedata=c(122,353,133,534);
names=c("bruteforce","sql","click jacking","xss");
#png(file="piechartexample.png");
pie3D(piedata,labels=names,col="darkkhaki",main="cyber attacks data piechart",col.main="orange");

pie(piedata,labels=names,col="darkkhaki",main="cyber attacks data piechart",col.main="orange");
dev.off()


#histogram
histodata=c(123,232,234,143,24,232,23,34);
#png(file="histogram.png")
hist(histodata,col="green",main="histogram representation",xlab="histogram");
