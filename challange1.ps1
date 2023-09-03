#!/bin/bash

# Variables
path='D:\Program_Intern\Project'
name_of_directory='Hans'
name_of_find_directory="Hans"

# Check if the directory exists
if [ -d "$path/$name_of_find_directory" ]; then
    echo "Directory $name_of_find_directory exists!"
else
    echo "Directory $name_of_find_directory does not exist!"
    mkdir -p "$path/$name_of_directory"
    echo "Directory $name_of_directory created!"
fi

