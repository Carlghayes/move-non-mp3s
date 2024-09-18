#!/bin/bash

# Define the path to your external hard drive (adjust this path accordingly)
EXTERNAL_DRIVE_PATH="/Volumes/YourExternalDriveName"

# Define the folder where mp3 files will be moved
TARGET_FOLDER="${EXTERNAL_DRIVE_PATH}/Music"

# Create the target folder if it doesn't exist
mkdir -p "$TARGET_FOLDER"

# Find mp3 files and move them to the target folder
find "$EXTERNAL_DRIVE_PATH" -type f -name "*.mp3" -exec mv -f {} "$TARGET_FOLDER" \;

echo "MP3 files moved to $TARGET_FOLDER"
