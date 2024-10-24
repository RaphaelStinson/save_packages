#!/data/data/com.termux/files/usr/bin/bash

# Test whether the SU command is available and whether the user has root permission.
if su -c "true" > /dev/null 2>&1; then
    # Executes the command with superuser permission
    su -c "pm list packages | awk -F':' '{print \$2 \"!\"}' > /data/adb/tricky_store/target.txt"
    
    # Displays a message of success
    echo "Successful access. List of packages saved in /data/adb/tricky_store/target.txt."
else
    # Displays failure message when trying to gain root access
    echo "Access denied. Unable to save package list."
fi