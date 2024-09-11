#!/opt/homebrew/bin/bash   


until_not_completed=true

while [[ "$until_not_completed" == true ]]; 
do
    echo -e "Choose the following option.\n1.Git initialize\n2.Github Push\n3.Github Repository  "
    read option

    if [[ option -eq 1 ]]; then
        git init
        git branch -M main
        until_not_completed=false
    elif [[ option -eq 2 ]]; then
        echo "Enter the message for github push"
        read githubMessage
        git add .
        git commit -m "$githubMessage"
        git push -u origin main
        until_not_completed=false
    elif [[ option -eq 3 ]]; then
        echo -e "Enter the github repo link"
        read githubRepoLink
        echo -e "Enter the commit message"
        read githubcommit
        git add .
        if [[ $? -ne 0 ]]; then
            git init
            git branch -M main
            git remote add origin "$githubRepoLink"
            git add .
        fi
        git add .
        git commit -m "$githubcommit"
        git push -u origin main
        until_not_completed=false
    fi
done