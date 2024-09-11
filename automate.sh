#!/opt/homebrew/bin/bash   

echo -e "Choose the following option.\n1.Git initialize\n2.Github Push\n3.Github Repository  "
read option

if [[ option -eq 1 ]]; then
    git init
    git branch -M main
elif [[ option -eq 2 ]]; then
    echo "Enter the message for github push"
    read githubMessage
    git add .
    git commit -m "$githubMessage"
    git push -u origin main
elif [[ option -eq 3 ]]; then
    echo -e "Enter the github repo link"
    read githubRepoLink
    git add .
    if [[ $? -ne 0 ]]; then
        git init
        git branch -M main
        git remote add origin "$githubRepoLink"
        git add .
    fi
    git add .
    git commit -m "$1"
    git push -u origin main
fi