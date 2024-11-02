#!/bin/bash

# Array of project names
projects=(
  "piano-tuning-tracker"
  "piano-tech-assistant"
  "your-name-music"
  "music-education-materials"
  "advanced-piano-technique-tracker"
)

# Base directory
base_dir="/Applications/MAMP/htdocs/cmiller/public_html/git"

# Loop through each project
for project in "${projects[@]}"
do
    echo "Pushing changes for $project..."
    
    # Navigate to the project directory
    cd "$base_dir/$project" || exit
    
    # Check if there are any changes to push
    if [[ $(git status --porcelain) ]]; then
        # Changes exist, so add, commit, and push
        git add .
        git commit -m "Update project files"
        git push origin main
        echo "$project: Changes pushed successfully."
    else
        # No changes
        echo "$project: No changes to push."
    fi
    
    echo
done

echo "All projects have been processed."