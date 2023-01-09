#functions
fun=function(num)
{
  print(num)
}
fun(5)

#function with  arguments
sum=function(num1,num2)
{
  print(paste("The sum is ",num1+num2))
}
sum(27,7)


#functions with named arguments
mul=function(x,y)
{
  sprintf("The multiplication of %d and %d is %d",x,y,x*y)
}
mul(y=5,x=20)


#funciton with return values
power<-function(a,b)
{
  return (a^b)
}
print(power(2,5))
