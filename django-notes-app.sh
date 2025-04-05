#!/bin/bash

<< Comment

This is shell script file deploying a djnago-notes-app

Comment

repo_clone() {
echo " *** Cloning Repo ***"
git clone https://github.com/WiseAdnan/django-notes-app.git
echo " Cloning Successful "
}

<< Comment
install_dependencies() {
echo " *** Installing Dependencies ***
}

Comment

deploy() {
echo " *** deploying the django-notes-app ***"
cd django-notes-app
docker build -t notes-app .
docker run -d -p 9001:8000 notes-app:latest
}


if ! repo_clone; then
 echo " NotesApp directory already exists. Skipping clone..."

cd django-notes-app

fi

if ! deploy; then
echo "deployment failed! mailing the admin"
  #mailadmin
fi

echo " *** Deployment Successfull *** "

