#!/bin/bash
url="https://github.com/Team-Watson-Hackbio-internship/Team-Watson-First-Task..git"
foldername="gitrepo"
​
git clone $url $foldername 
​
filenames=$(ls -t "./$foldername")
​
for filename in $filenames
do
    # chmod 755 "./$foldername/$filename"
    ext=${filename##*.}
​
​
    if [ "$ext" = "py" ] ; then
        python3 "./$foldername/$filename" >> info.csv
        # continue
​
    elif [ "$ext" = "php" ] ; then
        php "./$foldername/$filename" >> info.csv
        # continue
    
    elif [ "$ext" = "sh" ] ; then
        bash "./$foldername/$filename" >> info.csv
        # continue
​
    elif [ "$ext" = "js" ] ; then
        node "./$foldername/$filename" >> info.csv
        # continue
    
    else
        # echo "File $ext type unknown"
        continue
    fi
    # "./$foldername/$filename" >> info.csv
done
​
