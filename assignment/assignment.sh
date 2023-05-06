# OS Menu assignment
# Author: C22516126, Jason Garcia
# 01/05/2023

#create backup folder
if [ -d "/workspaces/OperatingSystems_Year1/assignment/Backup" ]; then
    echo "Backup folder exists"
else
    mkdir -p Backup
fi

#loops until it breaks
while true; do
    echo "Bash Commands"
    echo "1. List files"
    echo "2. Show free disk space"
    echo "3. Show system path"
    echo "4. Display command history"
    echo "5. Backup files"
    echo "6. Exit"

    read option

    #option 1
    if [[ $option == 1 ]]; then
        ls

    #option 2
    elif [[ $option == 2 ]]; then
        df -h

    #option 3
    elif [[ $option == 3 ]]; then
        echo $PATH

    #option 4
    elif [[ $option == 4 ]]; then
        history

    #option 5
    elif [[ $option == 5 ]]; then
        read -p "Enter directory name -> " name

        #makes directory readable
        chmod +r $name

        #copies recursively to backup
        cp -r $name Backup

        #lists folders in backup
        ls Backup

    #option 6
    elif [[ $option == 6 ]]; then
        break

    #invalid input
    else
        echo "Invalid option."
    fi
    
done