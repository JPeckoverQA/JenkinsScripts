#!/bin/bash

#stop the jenkins service
sudo systemctl stop jenkins

#remove the jenkins service
#not doing yet

#remove the jenkins user
sudo userdel -r jenkins

#delete the jenkins user home folder
sudo rm -r /home/jenkins

