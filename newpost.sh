#!/usr/bin/env bash

#   This script creates a new folder and a new .md post for a leetcode problem. 
#   For example:
#       ./newpost.sh 27 Remove Element

# name of file is all arguments passed to script
name=$@

# Replace space with hyphen
folderName=${name// /-}

# md file name
fileName="$folderName.md"

folderPath=$PWD/$folderName
filePath=$folderPath/$fileName

# Create folder
if [ -d $folderPath ]; then
    echo "Folder $folderPath already exists"
else
    mkdir ./$folderName
fi

# Create md file and fill with problem title
if [ -d $$filePath ]; then
    echo "File $filePath already exist"
else
	#"# $name\n\n ## Description \n\n ## Given skeleton solution \n\n ## idea \n\n ## Solution \n\n ## Result \n\n ## Conclusion" > $filePath

echo "# $name

## Description
Problem: 
## Given skeleton solution
```

```
## idea

## Solution
```
```
## Result

## Conclusion
"> $filePath
fi