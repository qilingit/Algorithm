#!/usr/bin/env bash

#   This script creates a new folder and a new .md post for a leetcode problem. 
#   For example:
#       ./newpost.sh 27 Remove Element

# name of file is all arguments passed to script
name=$@

# Replace space with hyphen
folderName=${name// /-}

# Java file name
fileName="$folderName.java"

folderPath=$PWD/$folderName
filePath=$folderPath/$fileName

# Create folder
if [ -d $folderPath ]; then
    echo "Folder $folderPath already exists"
else
    mkdir ./$folderName
fi

# Create java file and fill with pubic class
if [ -d $$filePath ]; then
    echo "File $filePath already exist"
else
    echo "public class " > $filePath
fi