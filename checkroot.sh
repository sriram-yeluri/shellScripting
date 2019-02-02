#!/bin/bash -x
if [ `whoami` != 'root' ]; then
    echo "Executing the installer script"
else
    echo "Root is not allowed to execute the installer script"
fi


# Another way 
if [ `id -u` -ne 0 ]; then
        echo "Executing the installer script"
        id
else
        echo "Root is not allowed to execute the installer script"
fi
