#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Windows Subsystem for Linux Installation by Tobias 
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

Ubuntu har redan installerats.
Startar Ubuntu ...
Installing, this may take a few minutes...
Please create a default UNIX user account. The username does not need to match your Windows username.
For more information visit: https://aka.ms/wslusers
Enter new UNIX username: "tobkar92"
New password: "TobKar92"
Retype new password: "TobKar92"
# passwd: password updated successfully
# Installation successful!
# To run a command as administrator (user "root"), use "sudo <command>".
# See "man sudo_root" for details.

# Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.153.1-microsoft-standard-WSL2 x86_64)

#  * Documentation:  https://help.ubuntu.com
#  * Management:     https://landscape.canonical.com
#  * Support:        https://ubuntu.com/advantage


This message is shown once a day. To disable it please create the
/home/tobkar92/.hushlogin file.

# - Open WSL
sudo apt update
[sudo] password for tobkar92: "TobKar92"
# Get:1 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
# [...]
# Fetched 33.1 MB in 8s (3926 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
119 packages can be upgraded. Run 'apt list --upgradable' to see them.

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
# pwgen -y -n 40
# dai3aib4ohv1shaethoo@qu8ait!oGh?ee5aehae
# ahb;a9cuthahFiesopuxieT3linughohr9xah8Ma
# eehee[p=ahf}ier5Queeyu)u2aiyoo2ahkae^shi
# Ahpho6aivo4uev8OoBei~noR5kie9shae4heith7
# EiBie)loaxetaej!a1gooz9baeng7eem8chepahs
# kei9ik0oP8pooSiekahg4haiGhi,m3ciu7cei7ae
# Rag7la0aepooqu5tei_yoow8dee9na1toh5aaNai
# Moo4ohnae)ciesahzahc2ooJ8Aifae2quael;eBe
# pheiFae1wu5oM:u<uj'eidiep5ahk.ie2OgalooM
# airee]keponahz3uo3quee[zahgho4IeNgaadueM
# waisoo$t8zohxohb/ushahyibeFi6Ohr1huyi9ch
# shaek:oo@ph0OYawai0aighap1otooshoaki>i2M
# tho5Eith3ohnieb3eiSh#aip\ai1ijohYoh)g}oh
# Ol&ee6teeWi1oodaeTheewietoteipaim5eec4ph
# aeg1quae7dei5Aeroleyi6aip6uf5ce9Tooj?uaw
# aiNg0oi7im3euSh8Meizeeg7ooz8aeza5Mae)ga"
# iB!uilai5oph5Raishi5loohai$p3xei~wahngoo
# kue9quei8phee5jah3Zaa0bi]s8ahge4ahDaih-o
# quee3kopu2oozuzi1xaiThai0taesh4jie/quoh7
# quie3pi9rio`nah6Ue2vo=a2chei%Nighaequ4Fu

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
ssh-keygen -t rsa -b 4096 -f ~/.ssh/"tobkar92.win.jensen"
# Generating public/private rsa key pair.
Enter passphrase (empty for no passphrase): "dai3aib4ohv1shaethoo@qu8ait!oGh?ee5aehae"
Enter same passphrase again: "dai3aib4ohv1shaethoo@qu8ait!oGh?ee5aehae"
# Your identification has been saved in /home/tobkar92/.ssh/tobkar92.win.jensen
# Your public key has been saved in /home/tobkar92/.ssh/tobkar92.win.jensen.pub
# The key fingerprint is:
# SHA256:lgns8It8FYmRs5AU/GCbLkCmd1X9J8nAYDrLp7//GIA tobkar92@DESKTOP-KNVLI0I
# The key's randomart image is:
# +---[RSA 4096]----+
# |   ooo.o++       |
# | o  *.+= .+      |
# |+  ..B*oo  + .   |
# |o . +=o= +  = .  |
# | o o  E S    o   |
# |  .... * .       |
# |   .o +   .      |
# |     . .   o     |
# |        ooo..    |
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
cat .ssh/tobkar92.win.jensen.pub
"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCsPQAvb61NFcl5r8leORPuvrgI6Qs2FyUILeIkneHHq4jmSB1E39YHqCJLNtfmPl5w88rrRu/IdMy8asy8DSq5zmvCIErKdjf51MRwmtsvKKcCF8YwnK82bV3mxEex/qX19ko4cFfBqduODMmGjASvZzWvQnIJOhlTw0wr1FDkm+Y63R/0ghjI7hosw1SEwDLLj27BiLMU3eRWWLPxBGPJvjU3itnIsDEst6YPkh6PgQsTICujeTkl6F0lAmxFyZ4KltNIVI0uW+gB0pPfGgv0HfvUguTfddxpfMnw4V3RJnK7LPvpMyiJ5q/3aRawczFNwze2sytjz2T/VIeb40AI2uQ1SvudsUmvMV4JTvMiLiSC7VbuyNwdVcGp4BFAWOVxAQ3zYL7Fi+14PcRAFCTEBLyQXhF60CEePHOxBjNg6G0dGbV4+voGHpsXyAdHPN3bVlh3oe80S65/tiT8b4MB2s1VWlXp7RVKfRnxO0eOq3yFQ79sEmD7FHRXPjbpjNA4ELjbx2OhmpkNfSMz6bKfjLLo5eNW+IEGSMHVJTToJrsv9xth/Ics+FxXYDH7YLZNPgD4VYbEQT0Lup+3PT1smpOZl8a3kIXPR57pAO4DnCROqCdvLYsgmRxwfWTPeKus7XZliB3J6kZtN9gxPvN0KGHPdBkY6vwsnTQTLse09Q== tobkar92@DESKTOP-KNVLI0I"

# - upload to github
"https://github.com/settings/ssh/new"

# Add new SSH Key
# Title
"tobkar92.win.jensen.pub"

# Key type
"[Authentication Key↕]"

# Key
"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCsPQAvb61NFcl5r8leORPuvrgI6Qs2FyUILeIkneHHq4jmSB1E39YHqCJLNtfmPl5w88rrRu/IdMy8asy8DSq5zmvCIErKdjf51MRwmtsvKKcCF8YwnK82bV3mxEex/qX19ko4cFfBqduODMmGjASvZzWvQnIJOhlTw0wr1FDkm+Y63R/0ghjI7hosw1SEwDLLj27BiLMU3eRWWLPxBGPJvjU3itnIsDEst6YPkh6PgQsTICujeTkl6F0lAmxFyZ4KltNIVI0uW+gB0pPfGgv0HfvUguTfddxpfMnw4V3RJnK7LPvpMyiJ5q/3aRawczFNwze2sytjz2T/VIeb40AI2uQ1SvudsUmvMV4JTvMiLiSC7VbuyNwdVcGp4BFAWOVxAQ3zYL7Fi+14PcRAFCTEBLyQXhF60CEePHOxBjNg6G0dGbV4+voGHpsXyAdHPN3bVlh3oe80S65/tiT8b4MB2s1VWlXp7RVKfRnxO0eOq3yFQ79sEmD7FHRXPjbpjNA4ELjbx2OhmpkNfSMz6bKfjLLo5eNW+IEGSMHVJTToJrsv9xth/Ics+FxXYDH7YLZNPgD4VYbEQT0Lup+3PT1smpOZl8a3kIXPR57pAO4DnCROqCdvLYsgmRxwfWTPeKus7XZliB3J6kZtN9gxPvN0KGHPdBkY6vwsnTQTLse09Q== tobkar92@DESKTOP-KNVLI0I"

"Add SSH key"

# - create ssh config file
cat <<"EOF" > ~/.ssh/config
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/tobkar92.win.jensen
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
Are you sure you want to continue connecting (yes/no/[fingerprint])? "y"
# Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
# Enter passphrase for key '/home/tobkar92/.ssh/tobkar92.win.jensen':
# remote: Enumerating objects: 21, done.
# remote: Counting objects: 100% (21/21), done.
# remote: Compressing objects: 100% (15/15), done.
# remote: Total 21 (delta 8), reused 16 (delta 4), pack-reused 0 (from 0)
# Receiving objects: 100% (21/21), 14.31 KiB | 1.10 MiB/s, done.
# Resolving deltas: 100% (8/8), done.

# - Push changes to remote repository
cd MAR24
mkdir tobias
cd tobias
cd
cd src/MAR24/
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# nothing to commit, working tree clean


