#!/bin/bash

#install jenkins

#update
sudo apt update

#install java
sudo apt install -y wget openjdk-8-jdk openjdk-8-jre

#create a jenkins user and make sure a home directory is created for it
sudo useradd --create-home jenkins

#set the default shell for jenkins to be bash
sudo usermod --shell /bin/bash jenkins

#download the latest jenkins war file
#switching to jenkins user first ensures it is installed in jenkins home folder
sudo su - jenkins -c "wget http://updates.jenkins-ci.org/latest/jenkins.war"

sudo cp jenkins.service /etc/systemd/system/

#install the jenkins systemd service script
sudo systemctl daemon-reload

#start jenkins
echo "Starting Jenkins"
sudo systemctl start jenkins
echo "Jenkins started!"

sudo su - jenkins -c "echo home/jenkins/.jenkins/secrets/initialAdminPassword"

#allow jenkins to run on system startup
sudo systemctl enable jenkins

