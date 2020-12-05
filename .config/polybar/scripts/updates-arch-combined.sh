#!/bin/sh

if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
    updates_arch=0
fi

if ! updates_aur=$(yay -Qum 2> /dev/null | wc -l); then
# if ! updates_aur=$(cower -u 2> /dev/null | wc -l); then
# if ! updates_aur=$(trizen -Su --aur --quiet | wc -l); then
# if ! updates_aur=$(pikaur -Qua 2> /dev/null | wc -l); then
# if ! updates_aur=$(rua upgrade --printonly 2> /dev/null | wc -l); then
    updates_aur=0
fi

# Output has 5 extra lines. When there are no updates, it has 2 lines.
#b=5;a=$(flatpak update 2> /dev/null | wc -l);updates_flatpak=$((a-b))
#if [ "$((updates_flatpak + 3))" -eq 0 ]; then
#    updates_flatpak=0
#fi

if ! updates_flatpak=$(flatpak update 2> /dev/null | grep "flathub" | wc -l); then
	updates_flatpak=0
fi

updates=$(("$updates_arch" + "$updates_aur" + "$updates_flatpak"))


if [ "$updates" -gt 0 ]; then
	if [ "$updates_arch" -gt 0 ]; then
		str1="  $updates_arch"
	else
		str1=""
	fi
	if [ "$updates_aur" -gt 0 ]; then
		str2="  $updates_aur"	
	else
		str2=""
	fi
	if [ "$updates_flatpak" -gt 0 ]; then
		str3="   $updates_flatpak"
	else
		str3=""
	fi
	echo $str1 $str2 $str3
else
	echo " "  
fi


    #if [ "$updates_arch" -gt 0 ]; then
#	if [ "$updates_aur" -gt 0 ]; then
#	    echo "  $updates_arch   $updates_aur"
#	else
#	    echo "  $updates_arch"
#	fi
#    elif [ "$updates_aur" -gt 0 ]; then
#        echo "  $updates_aur"
#    else
#	echo "" 
#    fi
