#Implement R script to read person‘s age from keyboard and display whether he is eligible for voting or not.
age<-readline(prompt="Enter your age")
age=as.integer(age)
{
if(age>18)
{
  sprintf("your are eligible to vote as your age is %d",age);
}
else
{
  sprintf("your are not eligible to yout as your age is %d",age)
}
}


