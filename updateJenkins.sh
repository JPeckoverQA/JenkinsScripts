#!/bin/bash

#stop the jenkins service
sudo systemctl stop jenkins

#remove old war file
sudo rm /home/jenkins/jenkins.war

#install the latest jenkins war file into the correct folder
#download the latest jenkins war file
#switching to jenkins user first ensures it is installed in jenkins home folder
sudo su - jenkins -c "wget http://updates.jenkins-ci.org/latest/jenkins.war"

sudo cp jenkins.service /etc/systemd/system/

sudo systemctl daemon-reload

#start the jenkins service
sudo systemctl start jenkins

