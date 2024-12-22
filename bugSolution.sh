#!/bin/bash

# This script demonstrates the corrected approach to handling filenames with spaces.

find . -maxdepth 1 -type f -print0 | while IFS= read -r -d $'\0' file; do
  echo "Processing: $file"
  # Correctly quoted variable prevents issues with filenames containing spaces
  cat "$file" | grep "error"
done