#R data types 

num<-123L
print(num)
print(class(num))

#logical data type
logic<-TRUE
print(class(logic))
logic2<-FALSE
print(class(logic2))

logicvar<-T
print(class(logic))
logicvar2<-F
print(class(logicvar2))

#numeric data type
x<-27.7
print(x)
print(class(x))

#interger data type
y<-27L
print(y)
print(class(y))

#complex data type
complex_num=2+7i
print(complex_num)
print(class(complex_num))

#character data type
char_var<-'a'
print(char_var)
print(class(char_var))

string_var="ganesh jaggineni"
print(string_var)
print(class(string_var))

#raw
raw_var<-"ganesh jaggineni"
print(raw_var)
print(class(raw_var))

raw_variable<-charToRaw(raw_var)
print(raw_variable)


#to find data type of variable  associated with
integer_var<-27L
print(is.integer(integer_var))
print(is.numeric(22.34))

print(is.complex(2+3i))

print(is.logical(F))

print(is.raw("gani"))

print(is.character("ganesh"))


#typecasting ->converting one data type to another
#using as.datatype(object)
x='23'
print(class(x))
int_conv=as.integer(x)
print(class(int_conv))
