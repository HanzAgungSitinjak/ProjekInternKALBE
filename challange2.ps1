#!/bin/bash

# Variables
path='D:\Program_Intern\Project'  # Ganti dengan lokasi yang sesuai pada sistem Anda
name_of_directory='Hans'
name_of_find_directory="Hans"
filename_excel="daily_market_price.xlsx"
source_dir='D:\Program_Intern\Project\Source_dir'  # Ganti dengan lokasi yang sesuai pada sistem Anda
target_dir="$path/$name_of_directory"

# Check if the directory exists
if [ -d "$path/$name_of_find_directory" ]; then
    echo "Directory $name_of_find_directory exists!"
else
    echo "Directory $name_of_find_directory does not exist!"
    mkdir -p "$path/$name_of_directory"
    echo "Directory $name_of_directory created!"
fi

# Copy file from source to target directory
if [ -f "$source_dir/$filename_excel" ]; then
    cp "$source_dir/$filename_excel" "$target_dir/$filename_excel"
    echo "File $filename_excel copied successfully."

    # Create log file
    log_file="$target_dir/Log.txt"
    echo "File $filename_excel copied on $(date)" >> "$log_file"
    echo "Log file created at $log_file."
else
    echo "File $filename_excel not found in source directory."
fi
