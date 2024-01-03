# Used this method 03JAN2024
# Based on Community documentation https://community.ui.com/questions/UniFi-Installation-Scripts-or-UniFi-Easy-Update-Script-or-UniFi-Lets-Encrypt-or-UniFi-Easy-Encrypt-/ccbc7530-dd61-40a7-82ec-22b17f027776
# Links - https://ui.com/download/releases/firmware

# NOTE - backup current version and download file to be used later.  
# Spin up an Ubuntu LXC Container! Based on YouTuber Geek of All Trades - https://www.youtube.com/watch?v=9GXFpRP5mH0
# I downloaded the ubuntu.22.04-standard template

# Installing ca-certificates and transport-https
sudo apt-get update && sudo apt-get install ca-certificates apt-transport-https

# Download the script created by Glennr.nl
wget https://get.glennr.nl/unifi/install/unifi-7.5.176.sh  

# NOTE - I also d/l the most current versions. I am using 7.5.176 at the time of this post. Used a current backup of the config to restore after launching the Linux version of the controller.

# Running the script with bash
bash unifi-7.5.176.sh

# Once the script completes browse to
https://ip.of.the.server:8443

#########################################################################

# Your UniFi Network Application has been successfully updated to 8.0.26
# Your UniFi Network Application backup is saved here: /usr/lib/unifi/data/backup/glennr-unifi-backups/
----
# HAPPY NEW YEAR 2024
# May this new year all your dreams turn into reality and all your efforts into great achievements
----
# Author   |  Glenn R.
# Email    |  glennrietveld8@hotmail.nl
# Website  |  https://GlennR.nl

# Using the UI - restore from backup file.

## From LawrenceNetworks
# Based on UI documentation https://help.ui.com/hc/en-us/articles/220066768-UniFi-How-to-Install-and-Update-via-APT-on-Debian-or-Ubuntu

# Install base needs and java 17
sudo apt-get update && sudo apt-get install ca-certificates apt-transport-https openjdk-17-jre-headless

# Add Ubiquiti & Mongo to the sources
echo 'deb https://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

# Add trust for Ubiquiti and Mongo sources
wget -qO - https://www.mongodb.org/static/pgp/server-3.4.asc | sudo apt-key add -
sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg

# Hold the java version for compatability so it does not break with updates
sudo apt-mark hold openjdk-11-*

# Install the UniFi controller
sudo apt-get update && sudo apt-get install unifi -y