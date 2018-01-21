#!/bin/bash
#Copyright (C) 2018
# Author: Fouad Djebbar <fouad@genunsys.com>
# URL: <http://genunsys.com/>
# For license information, see LICENSE.TXT


echo "Running..."
ext=menu.html
for d in */ ;
do
:
echo $d
fulld="/home/tmp/"$d
link=${fulld}$ext
echo $link

var=`cat "$d"url | grep -o -P '(?<=.com/v/).*(?=/menu)' |tr '/' '_' `
echo "var: "$var

read -p "Press enter to continue"

mv $link /home/yourdirectory/$var.html || true

echo "done"
done
