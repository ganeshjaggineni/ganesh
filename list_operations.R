#list operations in r program

list_data=list("ganesh",12,"TRUE");
print(list_data)
print(list_data[2])
print(list_data[3])
  #update list

list_data[3]<-FALSE;
 #length of list
print(length(list_data))
 
//adding/appending items into list
append(list_data,"jaggineni")

//print using loop
for(x in list_data)
{
  print(x)
}
