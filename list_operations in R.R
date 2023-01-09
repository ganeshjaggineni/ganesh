#creating lists
list1<-list(12,21,27,72)
print(class(list1))
print(typeof(list1))
print(list1)

#acssing elements
print(list1[2])
#modifying
list1[3]="ganesh"
print(list1)
#adding itmes to list
append(list1,"jaggineni")
print(list1)

#removing items from list
print(list1[-2])
print(list1)
#length of list
print(length(list1))

#iterating list
for(i in list1)
  print(i)
#check for exists or not
print("ganesh" %in% list1)

#acessing lists
stu_id=c(590,591,592,593)
stu_names=c("gani","naveen","teja","sampath")
stu_sal=c(3000,2334,3434,5343)
stu_list=list(
  "id"=stu_id,
  "names"=stu_names,
  "sal"=stu_sal
)
print(stu_list)

#acessing by names
print(stu_list$names)
#acessing by indexes

print(stu_list[2])
print(stu_list[[2]][1])      

print(rev(stu_list))
print(rev(stu_names))
lis_var=list(12,23,4,24)
print(lis_var)
print(rev(lis_var))

char_list=list("ganesh","gani","suresh","sravani","eswar")
print(rev(char_list))
