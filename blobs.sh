#!/bin/bash

mv *.sh *.txt ~/Dump/
cd ~/Dump
chmod 777 .
chmod 777 /root/Dump/*.sh
bash extract-files.sh
ls ../vendor/*/*
 echo "Blobs extraction done"
 cd ..
 cd vendor/*/
 rclone copy drive:blobs umi/
 exit 0
