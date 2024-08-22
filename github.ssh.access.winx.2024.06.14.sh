# #!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Windows Subsystem for Linux Installation by Jeff
##########################################################

# - Open Windows PowerShell or cmd
wsl --install -d ubuntu
# Den begärda åtgärden kräver en privilegiehöjning.
# Installing: Virtual Machine Platform
# Virtual Machine Platform has been installed.
# Installing: Windows Subsystem for Linux
# Windows Subsystem for Linux has been installed
# Installing: Windows Subsystem for Linux
# Windows Subsystem for Linux has been installed.
# Installing: Ubuntu
# Ubuntu has been installed.
# Den begärda åtgärden lyckades. Ändringarna kommer inte att träda i kraft förrän datorn startats om.

# - reboot computer
# - after reboot Ubuntu cmd will pop up:

# Ubuntu is already installed.
# Launching Ubuntu...
# Installing, this may take a few minutes...
# Please create a default UNIX user account. The username does not need to match your Windows username.
# For more information visit: https://aka.ms/wslusers
Enter new UNIX username: "jeff"
New password: "password"
Retype new password: "password"
# passwd: password updated successfully
# Installation successful!
# To run a command as administrator (user "root"), use "sudo <command>".
# See "man sudo_root" for details.

# Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.153.1-microsoft-standard-WSL2 x86_64)

#  * Documentation:  https://help.ubuntu.com
#  * Management:     https://landscape.canonical.com
#  * Support:        https://ubuntu.com/advantage


# This message is shown once a day. To disable it please create the
# /home/jeff/.hushlogin file.


# - Open WSL
sudo apt update
[sudo] password for jeff: "*******"
# Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
# Get:3 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
# Hit:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
# Get:5 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [1943 kB]
# [...]

# - install python
sudo apt install python3-pip
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# python3-pip is already the newest version (22.0.2+dfsg-1ubuntu0.4).
# 0 upgraded, 0 newly installed, 0 to remove and 49 not upgraded.

##########################################################
# install password generator and ssh
##########################################################

# - install password generator
sudo apt install pwgen
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# pwgen is already the newest version (2.08-2build1).
# 0 upgraded, 0 newly installed, 0 to remove and 49 not upgraded.

# - create a password 40 chars, numbers and symbols
pwgen -y -n 40
# ie?be:n5zohpaiKoc0quathohmaeNgaep6fi1shi
# fethai1ainei9Kae8Eish|oe8oquei%Yaep/ee7j
# quietu4or3aeghei0mung7oB{ah}g8ieh1aeJoop
# ioS0aibae^roh9Dei0ahlo_h7oocix6ohsh4If4r
# quaep5ilat3Shae|th9ahthof7aewu6PieNuerue
# aijah2iethaeChai8ZujahHuN'ugh7wie1Oophee
# ho.im;e+t0oonuhosoo3ohNg}e1Eth7au8wo3iku
# poh~phugeeghei4baequ0aelef7iepudee4RaiDa
# chie_lodah"R5eenooL`aita2iezaiW2joegah"X
# waep6fa8laec4eo+h0eibuu]Mie8ideat!oohie3
# ohf7nuuquahp@ah7aeD^ae2tai7eiVaeL3naepha
# ooPieth7voo7Tiesuwi6Uf8peeV,aiVi5gah\qu7
# eilei0oht2aed8gaewae7oo5sieg@aiCuoSh6ahp
# boub1ruP0ing1zee=ghooth4ahqu8zooqu2Eepai
# aeyi3eitu8thahd}ooghoo"PaePhaewee5zah1ph
# li5uph8aeShu2AeVui1aa4uung[ovohTahJ(utah
# ozee%ghoo4oL7Och`iisa-a2ohTe^Chei3ahbeip
# keiQu8IewieC6befu9phahbiwae7xohZai3ja<Qu
# ohchoh7Aengoe~r9bie7chae1yoor1ohngaic7be
# aepho0enof'aebi9quaizoog5Fep?oong5thaiz8

# - check if ssh service is running
sudo service ssh status
# ● ssh.service - OpenBSD Secure Shell server
#      Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor preset: enabled)
#      Active: active (running) since Mon 2024-08-12 14:10:22 CEST; 23h ago
#        Docs: man:sshd(8)
#              man:sshd_config(5)
#    Main PID: 2497 (sshd)
#       Tasks: 1 (limit: 9465)
#      Memory: 1.7M
#      CGroup: /system.slice/ssh.service
#              └─2497 "sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups"

# Aug 12 14:10:22 DESKTOP-1EDKBU6 systemd[1]: Starting OpenBSD Secure Shell server...
# Aug 12 14:10:22 DESKTOP-1EDKBU6 sshd[2497]: Server listening on 0.0.0.0 port 22.
# Aug 12 14:10:22 DESKTOP-1EDKBU6 sshd[2497]: Server listening on :: port 22.
# Aug 12 14:10:22 DESKTOP-1EDKBU6 systemd[1]: Started OpenBSD Secure Shell server.

# - in wsl install openssh
sudo apt install openssh-server
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# openssh-server is already the newest version (1:8.9p1-3ubuntu0.10).
# 0 upgraded, 0 newly installed, 0 to remove and 49 not upgraded.

# - create keypair
cd
mkdir .ssh
chmod 740 .ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/jeff.love.hp
# Generating public/private rsa key pair.
Enter passphrase (empty for no passphrase): "q4fZq185VKt7LgdNSP5W7A"
Enter same passphrase again: "q4fZq185VKt7LgdNSP5W7A"
# Your identification has been saved in /home/jeff/.ssh/jeff.love.hp
# Your public key has been saved in /home/jeff/.ssh/jeff.love.hp.pub
# The key fingerprint is:
# SHA256:ciWPCVw/ZDOCjyJ2rBHBgnCEPe2SModZJvTS8c+EgHk jeff@DESKTOP-1EDKBU6
# The key's randomart image is:
# +---[RSA 4096]----+
# |=**=   .o =      |
# |=+XE=.o. = o     |
# | O.O oo+. +      |
# |= O = =..* .     |
# | = * ..oS .      |
# |  .    o         |
# |                 |
# |                 |
# |                 |
# +----[SHA256]-----+

# - start ssh service
sudo service ssh start

# - allow ssh in firewall
sudo ufw allow ssh
# Skipping adding existing rule
# Skipping adding existing rule (v6)

##########################################################
# upload public keypair to github
##########################################################

# - install git
sudo apt install git
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# git is already the newest version (1:2.34.1-1ubuntu1.11).
# 0 upgraded, 0 newly installed, 0 to remove and 49 not upgraded.

# - fetch pubkey
cat .ssh/jeff.love.hp.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC9k0l4ph3nYHvHUz6CPsrH/NgnUBS6IylccF5GeEH2vHLjkZ9lFIqOLs8MKcwS2+vlULDuYsTugQEJCKmp81N1xJ2QlWXktma5jNJwfqesJ/kppQ2r8hL5UEp6fw/B81/Z+zExrQnFQyizJHKWS46+OtTJ0eLXU1V7dYmdmbY37hlDzNY8zAsduEl4+qFa8jOCmRwc8pnkKfA+DPxdhBAFSDs1bzpfJsKxN6ECvZ9tgZ0xZQWTe5QITgwHSRSDqtM88qnTAb5bEunA2INqUMZUS4P0gbgNSZkKbEIOAxJHkdqcYZXPiNeIRFc34U7MTGn34nS99omeL5nr4wldagFEKyyHSP9ePb54RFXF/c/ZgYlN36S315flHqlN4+gULopjpH/z9ktqmsbWazlWPNKoUYCt+UiWsq3HzOOP0sOEB7PAGpgZy+2FzabkCsb3AIRsxlZhGx9cJRlL2vZeC6lKS/hTKvLSVzM8+15n8e74Ar4bwkiGu0vsM9a+gaVSIVpq21rRak/jDlptgKz6vMn/cCwXMqHfpcevuLTe8aQc7LSkySPqvzPiCxq4tbuOcpmv5ZiRi1cMBpDLsYe/I5++YStWyBNF8EWYj81UMiOika/HQwD224lxY3lNW8FoYTuV18Jn/gUpQ/iEnbRklyRRdlKUs1M9rZJyjJcAaJhy2Q== jeff@DESKTOP-1EDKBU6

# - upload to github through web browser
"https://github.com/settings/ssh/new"

# Add new SSH Key
# Title
"jeff.love.hp"

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
  IdentityFile ~/.ssh/jeff.love.hp
EOF

# - Verify file
cat ~/.ssh/config
# Host github.com
#   HostName github.com
#   User git
#   IdentityFile ~/.ssh/jeff.love.hp

# - Create source directory
cd
mkdir src
cd src

# - Clone repo
git clone git@github.com:JensenEducationKista/MAR24.git
# Cloning into 'MAR24'...
# The authenticity of host 'github.com (140.82.121.3)' can't be established.
# ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
# This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? "yes"
# Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
Enter passphrase for key '/home/jeff/.ssh/jeff.love.hp': "******"
# remote: Enumerating objects: 21, done.
# remote: Counting objects: 100% (21/21), done.
# remote: Compressing objects: 100% (15/15), done.
# remote: Total 21 (delta 8), reused 16 (delta 4), pack-reused 0 (from 0)
# Receiving objects: 100% (21/21), 14.31 KiB | 16.00 KiB/s, done.
# Resolving deltas: 100% (8/8), done.

# - Push changes to remote repository
cd MAR24
mkdir jeff
cd jeff
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# nothing to commit, working tree clean

# - Copy and paste line 1 -239 to wsl using text editor of choise

##########################################################
# push to remote
##########################################################

git checkout -b "update-old-doc-for-consistency"
git add github.ssh.access.winx.2024.08.13
git status
# On branch update-old-doc-for-consistency
# Changes to be committed:
#   (use "git restore --staged <file>..." to unstage)
#         new file:   github.ssh.access.winx.2024.08.13

git config --global user.name "jeff"
git config --global user.email no@email.com
git commit -am "update-old-doc-for-consistency"
# [update-old-doc-for-consistency 2521269] update-old-doc-for-consistency
#  1 file changed, 239 insertions(+)
#  create mode 100644 jeff/github.ssh.access.winx.2024.08.13
git push --set-upstream origin update-old-doc-for-consistency

Enter passphrase for key '/home/jeff/.ssh/jeff.love.hp': "******"
# Enumerating objects: 5, done.
# Counting objects: 100% (5/5), done.
# Delta compression using up to 4 threads
# Compressing objects: 100% (4/4), done.
# Writing objects: 100% (4/4), 4.32 KiB | 738.00 KiB/s, done.
# Total 4 (delta 1), reused 0 (delta 0), pack-reused 0
# remote: Resolving deltas: 100% (1/1), completed with 1 local object.
# remote:
# remote: Create a pull request for 'update-old-doc-for-consistency' on GitHub by visiting:
# remote:      https://github.com/JensenEducationKista/MAR24/pull/new/update-old-doc-for-consistency
# remote:
# To github.com:JensenEducationKista/MAR24.git
#  * [new branch]      update-old-doc-for-consistency -> update-old-doc-for-consistency
# Branch 'update-old-doc-for-consistency' set up to track remote branch 'update-old-doc-for-consistency' from 'origin'.
