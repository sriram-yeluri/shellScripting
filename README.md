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

|Expression | True if                     |
|---------|-------------------------------|
| [[ $str ]] | string is not empty |
| [[ $str = "test" ]] | string is equal |
| [[ $str="ẗest" ]] | always return true |
