#!/bin/bash

# Array of project names
projects=("piano-tech-assistant" "your-name-music" "music-education-materials" "advanced-piano-technique-tracker")

# Loop through each project
for project in "${projects[@]}"
do
    echo "Updating $project..."
    
    # Navigate to the project directory
    cd "/Applications/MAMP/htdocs/cmiller/public_html/git/$project" || exit
    
    # Copy the README from Downloads
    cp ~/Downloads/"$project-README.md" ./README.md
    
    # Add and commit the changes
    git add README.md
    git commit -m "Update README with project description and developer information"
    
    echo "$project updated successfully."
    echo
done

echo "All projects have been updated."