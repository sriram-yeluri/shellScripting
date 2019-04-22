Find files > 500Mb
```sh
find . -type f -size +500M -exec ls -lhtr {} \; 
```

Delete files more than 3 days
```
find . -type f -mtime +3 -name '*.log' -execdir rm -- '{}'  \; 
```

