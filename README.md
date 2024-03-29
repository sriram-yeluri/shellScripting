# shellScripting

Repository created for knowledge on shell scripts

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
```
# to get help on all conditional expressions, user below command
help test
```

|Expression  | True if                          |
|------------|----------------------------------|
| [[ $str ]] | string is not empty |
| [[ $str = "test" ]] | string is equal |
| [[ $str="test" ]] | always return true, becs there is no space around = |
| -a $filename | file exists. |
| -b $filename | file exists and is a block special file. |
| -c $filename | file exists and is a character special file. |
| -d $dirname | file exists and is a directory.  |
| -e $filename | file exists. |
| -f $filename | file exists and is a regular file.  |
| -g $filename | file exists and is set-group-id. |
| -h $filename | file exists and is a symbolic link.|
| -k $filename | file exists and its sticky bit is set.  |
| -p $filename | file exists and is a named pipe (FIFO).  |
| -r $filename | file exists and is readable.  |
| -s $filename | file exists and has a size greater than zero.  |
| -t fd   | file descriptor fd is open and refers to a terminal.  |
| -u $filename | file exists and its set-user-id bit is set. |
| -w $filename | file exists and is writable. |
| -x $filename | file exists and is executable.  |
| -G $filename | file exists and is owned by the effective group id.  |
| -L $filename | file exists and is a symbolic link. |
| -N $filename | file exists and has been modified since it was last read. |
| -O $filename | file exists and is owned by the effective user id. |
| -S $filename | file exists and is a socket.  |
| -v $variable | the shell variable varname is set (has been assigned a value).   |
| -z string | the length of string is zero. |
| -n string | the length of string is non-zero. |


## Special Variables

| Special Variables | Description                                     |
|----|----------------------------------------------------------------|
| $0 | returns name of the script                                     |
| $# | returns total number of arguments                              |
| $@ | returns list of arguments                                      |
| $* | If a script receives two arguments, $* is equivalent to $1 $2. |
| $? | returns exit value of the last executed command                |
| $! | returns process number of the last background command          |
| $$ | returns PID of current shell                                   |
| !$ | Last argument in a command                                     |

## To get length of the string in a variable
${#var}
