#!/bin/bash

mv *.sh *.txt ~/Dump/
cd ~/Dump
chmod 777 .
chmod 777 /root/Dump/*.sh
bash extract-files.sh
ls ../vendor/*/*
 echo "Blobs extraction done"
 cd ../
 cd vendor/*/*
 git init && curl -s -X POST -H "Authorization: token ${GITHUB_TOKEN}" -d '{ "name": "'"${repo}"'"' "https://api.github.com/orgs/${GIT_ORG}/repos" } >/dev/null 2>&1
 git remote remove origin
 git remote add origin "https://github.com/"${GIT_ORG}"/"${repo}"
 git add --all
 git commit -asm "Blobs for umi"
 exit 0
