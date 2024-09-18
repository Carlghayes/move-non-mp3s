#!/bin/bash

# Define the path to your external hard drive (adjust this path accordingly)
EXTERNAL_DRIVE_PATH="/Volumes/LaCie/MyMusic"

# Define the folder where non-mp3 files will be moved
TARGET_FOLDER="/Users/carlg/Desktop/to-be-deleted"

# Create the target folder if it doesn't exist
mkdir -p "$TARGET_FOLDER"

# Find files that do not have the mp3 extension and move them
find "$EXTERNAL_DRIVE_PATH" -type f ! -name "*.mp3" -exec mv -f {} "$TARGET_FOLDER" \;

echo "Files moved to $TARGET_FOLDER"
