#!/bin/bash

# Check if a directory path is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <absolute_path_to_directory>"
  exit 1
fi

DIR="$1"

# Validate that the path is a directory
if [ ! -d "$DIR" ]; then
  echo "Error: '$DIR' is not a valid directory."
  exit 1
fi

# Count the number of regular files in the directory (not recursively)
FILE_COUNT=$(find "$DIR" -maxdepth 1 -type f | wc -l)

echo "There are $FILE_COUNT files in the directory '$DIR'."
