#creating a vector
vect=c(1,2,3,4,5)
print(c)
print(class(c))

#accessing vector elements
cyber<-c("bruteforce","sql injection","xss")
print(cyber[2])
print(cyber[1])

#accessing vector elements using logical expression
print(cyber[cyber>1])

#modify vectors
vulnerable<-c("clickjacking","dictionary")
print(vulnerable)
vulnerable[2]="otp bypassing"
print(vulnerable)

#creating vector using sequence
vec<-c(1:25)
print(vec)

#length of vector
print(length(vulnerable))

#printing vector using loop
for(var in cyber)
  print(var)

#repeating vectors
num<-rep(c(12,24,25,245,25),times=5)
print(num)
