#Implement R script to check the given year is leap year or not.
year=readline(prompt="Enter a year to check leap year or not")
year=as.integer(year)
{
  
if((year%%4)==0)
 {
    if((year%%100)==0)
    {
      if((year%%400)==0)
      {
        print(paste(year,"is a leap year"))
      }
      else
      {
        print(paste(year,"is not a leap year"))
      }
    }
    else
    {
      print(paste(year,"is a leap year"))
    }
}
else
{
  print(paste(year,"is not a leap year"))
}
  
}
