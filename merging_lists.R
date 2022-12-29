#Implement R Script to merge two or more lists.

#using c() method
list1<-list(12:24);
list2<-list(30:45);
merged_list<-c(list1,list2);
print(merged_list);


#using append method
list3<-list(12,134,24);
list4<-list(1:27);
list_merged<-append(list3,list4);
print(list_merged)
