# sticky bit

When the sticky bit is set on a directory, only the owner and the root user can delete/rename the files or directories within that directory.

### How to set sticky bit 

chmod 1777 dir  
chmod +t dir  

### To remove sticky bit from a directory

chmod -t dir

### How to list all directories set with sticky bit

```sh
find / -type d -perm -1000 -exec ls -ld {} \;
```
