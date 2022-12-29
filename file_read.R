#Write R script to display file contents.
file_data=read.delim("C:\\Users\\ganes\\Desktop\\PAKODI.txt",header=FALSE);
print(file_data)

#to choose a file using file explorer as a dialog box
file_read=read.delim(file=choose.files(),header=FALSE);
print(file_read)
