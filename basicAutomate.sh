#!/opt/homebrew/bin/bash  

if [[ $# -eq 0 ]]; then
    echo "Error!!! A message for git commit is required."
else
    git add .
    if [[ $? -ne 0 ]]; then
        echo "Enter the GitHub repo link:"
        read githubRepoLink
        git init
        git branch -M main
        git remote add origin "$githubRepoLink"
        git add .
    fi
   
    git commit -m "$1"
    git push -u origin main
fi
