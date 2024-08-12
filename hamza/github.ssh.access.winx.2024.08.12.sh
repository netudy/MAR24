#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Windows Subsystem for Linux Installation
##########################################################

# - Open Windows PowerShell
wsl --install -d ubuntu
# The requested operation requires elevation.
# Installing: Virtual Machine Platform
# Virtual Machine Platform has been installed.
# Installing: Windows Subsystem for Linux
# Windows Subsystem for Linux has been installed.
# Installing: Ubuntu
# Ubuntu has been installed.
# The requested operation is successful. Changes will not be effective until the system is rebooted.

# - reboot computer
# - after reboot Ubuntu cmd will pop up:

# Installing, this may take a few minutes...
# Please create a default UNIX user account. The username does not need to match your Windows username.
# For more information visit: https://aka.ms/wslusers
Enter new UNIX username: "hamza"
New password: "0000"
Retype new password: "0000"
# passwd: password updated successfully
# Installation successful!
# Windows Subsystem for Linux is now available in the Microsoft Store!
# You can upgrade by running 'wsl.exe --update' or by visiting https://aka.ms/wslstorepage
# Installing WSL from the Microsoft Store will give you the latest WSL updates, faster.
# For more information please visit https://aka.ms/wslstoreinfo

# To run a command as administrator (user "root"), use "sudo <command>".
# See "man sudo_root" for details.

# Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.10.16.3-microsoft-standard-WSL2 x86_64)

#  * Documentation:  https://help.ubuntu.com
#  * Management:     https://landscape.canonical.com
#  * Support:        https://ubuntu.com/advantage

# This message is shown once a day. To disable it please create the
# /home/hamza/.hushlogin file.

# - Open WSL
sudo apt update
[sudo] password for hamza: "0000"
# [...]
# Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
# Get:3 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
# Get:5 http://archive.ubuntu.com/ubuntu jammy/universe amd64 Packages [14.1 MB]
# Get:6 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [1712 kB]
# Get:7 http://security.ubuntu.com/ubuntu jammy-security/main Translation-en [283 kB]
# Get:8 http://security.ubuntu.com/ubuntu jammy-security/main amd64 c-n-f Metadata [13.1 kB]
# [...]
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# 119 packages can be upgraded. Run 'apt list --upgradable' to see them.

sudo apt upgrade
[...]
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# Calculating upgrade... Done
# The following NEW packages will be installed:
#   ubuntu-pro-client
# The following packages will be upgraded:
# [...]
# Processing triggers for install-info (6.8-4build1) ...
# Processing triggers for libc-bin (2.35-0ubuntu3.8) ...
# Processing triggers for man-db (2.10.2-1) ...
# Processing triggers for plymouth-theme-ubuntu-text (0.9.5+git20211018-1ubuntu3) ...
# Processing triggers for dbus (1.12.20-2ubuntu4.1) ...

# - install python
# sudo apt install python3-pip
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following additional packages will be installed:
#   build-essential bzip2 cpp cpp-11 dpkg-dev fakeroot
#   fontconfig-config fonts-dejavu-core g++ g++-11 gcc gcc-11
#   gcc-11-base javascript-common libalgorithm-diff-perl# [...]
# [...]
Do you want to continue? [Y/n] "y"
# [...]
# Setting up build-essential (12.9ubuntu3) ...
# Setting up libpython3-dev:amd64 (3.10.6-1~22.04) ...
# Setting up python3-dev (3.10.6-1~22.04) ...
# Processing triggers for man-db (2.10.2-1) ...
# Processing triggers for libc-bin (2.35-0ubuntu3.8) ...

##########################################################
# install password generator and ssh
##########################################################

# - install password generator
sudo apt install pwgen
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following NEW packages will be installed:
#   pwgen
# 0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
# Need to get 17.4 kB of archives.
# After this operation, 53.2 kB of additional disk space will be used.
# Get:1 http://archive.ubuntu.com/ubuntu jammy/universe amd64 pwgen amd64 2.08-2build1 [17.4 kB]
# Fetched 17.4 kB in 0s (35.6 kB/s)
# Selecting previously unselected package pwgen.
# (Reading database ... 31447 files and directories currently installed.)
# Preparing to unpack .../pwgen_2.08-2build1_amd64.deb ...
# Unpacking pwgen (2.08-2build1) ...
# Setting up pwgen (2.08-2build1) ...
# Processing triggers for man-db (2.10.2-1) ...

# - create a password 40 chars, numbers and symbols
pwgen -y -n 40
# Xoh?tahgheNaemi6oghoht9iej?ae&gh0oof8fie
# eTah3aeghei]L0eep6Me:asheingoev$eQu3da5j
# uQuatho5oejie#nahn4wiezu$h*u%areilae0oor
# aich?ah3pohZ&eeNoola#Th9at3aequ6ie6ahv)o
# OhChae7ej9pharaeS'eip8ao8ceeg0uxeiquoSoo
# eich7jai0bie9wohvae1quaishu(biequai8ahPh
# Huo?Choo2wee^ji8phii%gh7eili8eiphie=ke[u
# tiched7tav+oo7ahjae6Ieki,l8ahJae/ti7su3r
# ahngaehavoon*e$s#airahxoo4aexahNa4wu7oaf
# ieL!o3bu0ka3kohviek/iequ,ohtav3boh8chieX
# Iet1eth.oo-Hi>G!ef3pahquaif6er5befai1pae
# zaubohWie[phaiYeiZ4eitai1yot3cohh1ve2ir7
# Aip-aequ9go?eVi1Eeshaeco{ebae5xe/uB=aedi
# ying)ee2Obai4eegevuuc0ia4thiemahH1Leowoj
# eem7uag+aip4phahzue3eip8nahSh-a6chah6Qua
# vei7PheeH7ees(oothu5uu%gamooNg6OhdiJieng
# paiqu8joh7ieP%oosohT4aishegoh3PhooDa3zah
# kie3mi4Orashu0oC2thohxeiquah+shooz9kie"S
# Koh-j9oighuejeiju[S*eeph5shaeF'e|sheesh}
# diesh?eefae6oo5Ii1iequ4Iengoo[f6fahNgo7a

# - check if ssh service is running
sudo service ssh status
# Unit ssh.service could not be found.

# - in wsl install openssh
sudo apt install openssh-server
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following additional packages will be installed:
#   libwrap0 ncurses-term openssh-sftp-server ssh-import-id
# Suggested packages:
#   molly-guard monkeysphere ssh-askpass
# The following NEW packages will be installed:
#   libwrap0 ncurses-term openssh-server openssh-sftp-server ssh-import-id
# 0 upgraded, 5 newly installed, 0 to remove and 2 not upgraded.
# Need to get 800 kB of archives.
# After this operation, 6161 kB of additional disk space will be used.
Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-sftp-server amd64 1:8.9p1-3ubuntu0.7 [38.9 kB]
# Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libwrap0 amd64 7.6.q-31build2 [47.9 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-server amd64 1:8.9p1-3ubuntu0.7 [435 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 ncurses-term all 6.3-2ubuntu0.1 [267 kB]
# [...]

# - create keypair
cd
mkdir .ssh
chmod 740 .ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/hamza.hp.jensen
Enter passphrase (empty for no passphrase): "cee4id'i6kahth*ei7gu"achahneighaipih8Kei"
Enter same passphrase again: "cee4id'i6kahth*ei7gu"achahneighaipih8Kei"
# Your identification has been saved in /home/hamza/.ssh/hamza.hp.jensen
# Your public key has been saved in /home/hamza/.ssh/hamza.hp.jensen.pub
# The key fingerprint is:
# SHA256:C/qq6V5vHS9UDYh1grOWZgnqeaohT3zxQX81rvTDQ9I hamza@LAPTOP-0AKJDAO5
# The key's randomart image is:
# +---[RSA 4096]----+
# |       +o..      |
# |    . + .o.      |
# |   . ..=   oo    |
# |  .  .B.  .+..   |
# | . ..+o S.+ E    |
# | .o .+ oo+ *     |
# |o oo+ .o.o. =    |
# |.+.+ o. o .  o   |
# |.+*..oo  .       |
# +----[SHA256]-----+

# - start ssh service
sudo service ssh start

# - allow ssh in firewall
sudo ufw status
# Status: inactive

sudo ufw allow ssh
# Rules updated
# Rules updated (v6)

##########################################################
# upload public keypair to github
##########################################################

# - install git
sudo apt install git
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# git is already the newest version (1:2.34.1-1ubuntu1.11).
# git set to manually installed.
# 0 upgraded, 0 newly installed, 0 to remove and 2 not upgraded.

# - fetch pubkey
cat .ssh/hamza.hp.jensen.pub
# ****************

# - upload to github
"https://github.com/settings/ssh/new"

# Add new SSH Key
# Title
"hp.envy"

# Key type
"[Authentication Key↕]"

# Key
"****************"

"Add SSH key"

# - create ssh config file
cat <<"EOF" > ~/.ssh/config
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/hamza.hp.jensen
EOF

# - Create source directory
cd
mkdir src
cd src

# - Clone repo
git clone git@github.com:JensenEducationKista/MAR24.git
# Cloning into 'MAR24'...
# The authenticity of host 'github.com (140.82.121.4)' can't be established.
# ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
# This key is not known by any other names
# Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
# Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
# Enter passphrase for key '/home/hamza/.ssh/hamza.hp.jensen': "cee4id'i6kahth*ei7gu"achahneighaipih8Kei"
# remote: Enumerating objects: 6, done.
# remote: Counting objects: 100% (6/6), done.
# remote: Compressing objects: 100% (4/4), done.
# remote: Total 6 (delta 0), reused 6 (delta 0), pack-reused 0
# Receiving objects: 100% (6/6), 4.12 KiB | 843.00 KiB/s, done.

# - Push changes to remote repository
cd MAR24
mkdir hamza
cd hamza
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# nothing to commit, working tree clean

