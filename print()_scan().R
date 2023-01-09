#taking input from user
string=readline()
print(string)
print(class(string))
num=as.integer(string)
print(num)
print(class(num))

#providing prompt
name=readline(prompt="Enter your name")
print(name)

#to read multiple items at once
scanning=scan()
print(scanning)

#reading multiple characters at once
multi_char=scan(what=character())
print(multi_char)

#reading multiple strings at once
multi_string=scan(what='')
print(multi_string)

#reading mulitple integers
multi_int=scan(what=integer())
print(multi_int)
