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

# Ubuntu is already installed.
# Launching Ubuntu...
# Installing, this may take a few minutes...
# Please create a default UNIX user account. The username does not need to match your Windows username.
# For more information visit: https://aka.ms/wslusers
Enter new UNIX username: "aliz"
New password: "ali123"
Retype new password: "ali123"
# passwd: password updated successfully
# Installation successful!
# To run a command as administrator (user "root"), use "sudo <command>".
# See "man sudo_root" for details.

# Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.153.1-microsoft-standard-WSL2 x86_64)

#  * Documentation:  https://help.ubuntu.com
#  * Management:     https://landscape.canonical.com
#  * Support:        https://ubuntu.com/advantage


# This message is shown once a day. To disable it please create the
# /home/aliz/.hushlogin file.
# aliz@AliZ:~$

# - Open WSL
sudo apt update
[sudo] password for aliz: "ali123"
# Get:1 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
# [...]
# Fetched 31.8 MB in 24s (1305 kB/s)
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# 105 packages can be upgraded. Run 'apt list --upgradable' to see them.

sudo apt upgrade
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# Calculating upgrade... Done
# The following NEW packages will be installed:
# [...]
Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 motd-news-config all 12ubuntu4.6 [4352 B]
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libc6 amd64 2.35-0ubuntu3.8 [3235 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 base-files amd64 12ubuntu4.6 [62.5 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 bash amd64 5.1-6ubuntu1.1 [769 kB]
# Get:5 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 bsdutils amd64 1:2.37.2-4ubuntu3.4 [80.9 kB]
# Get:6 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 coreutils amd64 8.32-4.1ubuntu1.2 [1437 kB]
# [...]

# - install python
sudo apt install python3-pip
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following additional packages will be installed:
#   build-essential bzip2 cpp cpp-11 dpkg-dev fakeroot fontconfig-config
#   fonts-dejavu-core g++ g++-11 gcc gcc-11 gcc-11-base javascript-common
# [...]
Do you want to continue? [Y/n] "y"

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
# 0 upgraded, 1 newly installed, 0 to remove and 2 not upgraded.
# Need to get 17.4 kB of archives.
# After this operation, 53.2 kB of additional disk space will be used.
# Get:1 http://archive.ubuntu.com/ubuntu jammy/universe amd64 pwgen amd64 2.08-2build1 [17.4 kB]
# Fetched 17.4 kB in 0s (45.4 kB/s)
# Selecting previously unselected package pwgen.
# (Reading database ... 31448 files and directories currently installed.)
# Preparing to unpack .../pwgen_2.08-2build1_amd64.deb ...
# Unpacking pwgen (2.08-2build1) ...
# Setting up pwgen (2.08-2build1) ...
# Processing triggers for man-db (2.10.2-1) ...

# - create a password 40 chars, numbers and symbols
pwgen -y -n 40
# jeiVee7be"e<chee2aikaLoh7Pohc.eiy6ieT9va
# daQuu7ooya]beiH:a4ahch1oog3bohk3Pai1Quee
# se{unaKoo#Ph0Aishaech/ei1ooRo+Xoo3az0ath
# Sheif3Ohchee6moexiem0lahZooM0yohqu(einge
# chooreep1pohyeoqu6jaequoRuu`k2paiz7Cai5m
# deiv1ieNooK7aes4chahv&aeth`ai2theeb/iewa
# eidee2Aex)oe8eD6cee1iw,ao6bo6eipue/ko8pe
# egh.oiSuitha6aevu)oyaiYu9ahQu8ieng}iji4u
# queiCh7chee5kaiqu1quo?aNgu)ph{ae!j^ie7so
# wah8aesh1aecha4yie0iel1Zie4gee<W9hinooJ3
# le9Ohk;ee6Abaizoo7wuu9ein2agh)ie]t5jaewu
# coh}bee7aigaigualoopaht3aij#ais8yei3Eeth
# Ii}f8boh2Shoo7iey9teeshahngie\zie5aoZoht
# Aa7Ma6pha8zooCho8yahdied,eixai2ooquahz<a
# Ahghe(ar~o7shah5wa2rofi'o4heiNgi8Pu#Ghae
# jie5ahF"u1aecoo(g9aal2thaep2zaSh4joo2noo
# raedahng%ooyoCei0lei1OoShie,ghoo5vaingei
# yu3aqu7Eshei9Yei7ree0ThahPeiloH7ShooQu+u
# gu9eez1OeYaewahs4beip2coo4quuiShaen?ohng
# gei7Quaeliebo5NooP4oo2eequ5oquai3queB~ah

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
ssh-keygen -t rsa -b 4096 -f ~/.ssh/hp.envy
Enter passphrase (empty for no passphrase): "jie5ahF"u1aecoo(g9aal2thaep2zaSh4joo2noo"
Enter same passphrase again: "jie5ahF"u1aecoo(g9aal2thaep2zaSh4joo2noo"
# Your identification has been saved in /home/aliz/.ssh/hp.envy
# Your public key has been saved in /home/aliz/.ssh/hp.envy.pub
# The key fingerprint is:
# SHA256:Un3e+5u2Pg7E1jljVztwc1GXWVzi5NZ0JBDfgDu0VPs aliz@AliZ
# The key's randomart image is:
# +---[RSA 4096]----+
# |            o=*+#|
# |         .  += @=|
# |        . .o.+*o=|
# |       .   o=o+.*|
# |      . S   .=.OE|
# |       .    o ..=|
# |             ..  |
# |              .+.|
# |              +*=|
# +----[SHA256]-----+

# - start ssh service
sudo service ssh start

# - allow ssh in firewall
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
cat .ssh/hp.envy.pub
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
  IdentityFile ~/.ssh/hp.envy
EOF

# - Create source directory
cd
mkdir src
cd src

# - Clone repo
git clone git@github.com:JensenEducationKista/KB-SEP23.git
# Cloning into 'KB-SEP23'...
Enter passphrase for key '/home/aliz/.ssh/hp.envy': "******"
# remote: Enumerating objects: 20, done.
# remote: Counting objects: 100% (20/20), done.
# remote: Compressing objects: 100% (13/13), done.
# remote: Total 20 (delta 5), reused 18 (delta 3), pack-reused 0
# Receiving objects: 100% (20/20), 11.29 KiB | 2.26 MiB/s, done.
# Resolving deltas: 100% (5/5), done.

# - Push changes to remote repository
cd KB-SEP23/Group3
mkdir ali
cd ali
cd
cd src/KB-SEP23/
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#         Group3/ali/

# nothing added to commit but untracked files present (use "git add" to track)
git checkout -b "ali_doc_verification"
git add *
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# Changes to be committed:
#   (use "git restore --staged <file>..." to unstage)
#         new file:   Group3/ali/github.ssh.access.winx.2024.06.14.sh
git config --global user.name "Ali Zabihi"
git config --global user.email no@email.com
git commit -am "verify previous documentation"
# On branch main
# Your branch is ahead of 'origin/main' by 1 commit.
#   (use "git push" to publish your local commits)

# nothing to commit, working tree clean
git push --set-upstream origin ali_doc_verification

