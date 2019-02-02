# shellScripting
Repository created for shell scripts

## TIPS
* Don't use white space around =
* If variable already exists, then new value will override old value
* Bash variables has no data type. Stores variables as strings
* Only letters,numbers and underscore are allowed for variables
* First character should be a letter or an underscore
* Variable names are case sensitive
* Good Habit : user lowercase for variables
* Good Habit : Surround variables with quotes. Ex. "${HOME}"
* Good Habit: use braces {}. Ex: echo "{foo}bar" instead of echo "foobar"
* There is no need to use escape slash \ while using double quotes. 
* use ${HOME} instead of tilda ~


## To see all builtin commands of bash
man builtin

## How to debug shell script
use -x option in the hashbang to debug a script.
```
#!/bin/bash -x
```
Note: Adding -x at hashbang will print debug messages for entire script. So to avoid debugging entire script and to debug only selected lines of a script , use "set -x" to enable and "set +x" to disable debugging for selected lines. 

## Conditional Expressions

|Expression  | True if                          |
|------------|----------------------------------|
| [[ $str ]] | string is not empty |
| [[ $str = "test" ]] | string is equal |
| [[ $str="ẗest" ]] | always return true, becs there is no space around = |
| -a file | file exists. |
| -b file | file exists and is a block special file. |
| -c file | file exists and is a character special file. |
| -d file | file exists and is a directory.  |
| -e file | file exists. |
| -f file | file exists and is a regular file.  |
| -g file | file exists and is set-group-id. |
| -h file | file exists and is a symbolic link.|
| -k file | file exists and its sticky bit is set.  |
| -p file | file exists and is a named pipe (FIFO).  |
| -r file | file exists and is readable.  |
| -s file | file exists and has a size greater than zero.  |
| -t fd   | file descriptor fd is open and refers to a terminal.  |
| -u file | file exists and its set-user-id bit is set. |
| -w file | file exists and is writable. |
| -x file | file exists and is executable.  |
| -G file | file exists and is owned by the effective group id.  |
| -L file | file exists and is a symbolic link. |
| -N file | file exists and has been modified since it was last read. |
| -O file | file exists and is owned by the effective user id. |
| -S file | file exists and is a socket.  |
| -v varname | the shell variable varname is set (has been assigned a value).   |
| -z string | the length of string is zero. |
| -n string | the length of string is non-zero. |
