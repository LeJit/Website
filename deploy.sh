#!/bin/bash

echo -e "\033[0;32mDeploying updaates to GitHub...\033[0m"

#Build the project
hugo

#Go to public folder
cd public
#Add changes to git
git add -A

#Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
	then msg="$1"
fi
git commit -m "$msg"

#Push source and build repo
git push origin master
#Come back
cd ..