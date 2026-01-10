#!/bin/bash

# Create a new GitHub repository
gh repo create "$1" --private --confirm --description "$2"      
# Initialize local git repository and push to GitHub
git init
git remote add origin "https://github.com/$USER/$1.git" 
git add .
git commit -m "Initial commit"
git branch -M main
git push -u origin main 
echo "Repository '$1' created and initial commit pushed."
# Usage: ./newGhRepo.sh <repo-name> "<repo-description>"
# Example: ./newGhRepo.sh my-new-repo "This is my new GitHub repository"
