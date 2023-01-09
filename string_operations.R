#string operations in R

#lenght of string
#nchar()
"ganesh jaggineni"->msg
print(nchar(msg))

#joing strings using paste() method
str1="ganesh"
str2="lbrce"
x=paste(str1,str2)
print(x)

#comparing strings
"ganesh"->string1
"lakireddy bali reddy college of engineering" ->string2
print(string1==string2)

#changing to lowercase
varstr="GANESHJAGGINENI"
lowerstr=tolower(varstr)
print(lowerstr)

#changing to uppercase
strvariable="gani"
print(toupper(strvariable))
