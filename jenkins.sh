#!/opt/homebrew/bin/bash

echo -e "Choose the following options\n1. To start the jenkins server\n2. To Stop the jenkins server"
read option

if [[ option -eq 1 ]]; then
    cd 
    bash Downloads/apache-tomcat-9.0.93/bin/startup.sh
elif [[ option -eq 2 ]]; then
    cd
    bash Downloads/apache-tomcat-9.0.93/bin/shutdown.sh

fi