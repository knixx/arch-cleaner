!#/bin/bash

sudo pacman -S figlet
clear

figlet Jacobs Arch clean
                           
echo -e "would you like to update?[y,n]"

read input
if [[ $input == "y"||$input == "Y" ]]; then
        sudo pacman -Sy 
        sudo pacman -Syu
else

        sudo pacman -Sc
        
        clear
        
        echo -e "Don't worry I'm not windows, I won't update if you don't want me to ;)"

fi

echo -e "would you like to clean your computer?[y,n]"

read input
if [[ $input == "y"||$input == "Y" ]]; then 
        sudo pacman -Scc
        sudo pacman -S bleachbit
        clear
        echo -e "okay so just check off any system files you may want to delete and close bleachbit. WARNING!!! BLEACHBIT WAS OPENED WITH ROOT PRIVILIGES SO BE CAREFUL!!!!"
        sudo bleachbit 
        sudo pacman -R bleachbit 
        sudo pacman -Qdtq
        clear
        sudo pacman -R $(pacman -Qdtq)
        sudo pacman -R figlet
        clear
        echo -e "your computer is cleaner"
        echo -e "have a nice day"
        echo -e "any questions or concerns or issues with my script Feel free to email me at: jaccxcob1122@gmail.com"
else 

        clear
        echo -e "have a nice day"
        exit
        
fi

