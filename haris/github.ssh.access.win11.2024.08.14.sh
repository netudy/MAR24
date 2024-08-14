# #!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Windows Subsystem for Linux Installation by Jeff
##########################################################

# - wsl has already been installed

# - Open WSL
sudo apt update
# Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
# Hit:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
# Hit:3 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
# Get:4 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
# Fetched 129 kB in 1s (193 kB/s)
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# 5 packages can be upgraded. Run 'apt list --upgradable' to see them.

# - install python
sudo apt install python3-pip
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# python3-pip is already the newest version (22.0.2+dfsg-1ubuntu0.4).
# 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.

##########################################################
# install password generator and ssh
##########################################################

# - install password generator
sudo apt install pwgen
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# pwgen is already the newest version (2.08-2build1).
# 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.

# - create a password 40 chars, numbers and symbols
pwgen -y -n 40
# kieng6shahduup9koo\Po5eeMiceiJ1Oshiu"g=e
# jei2aigh(iTheikos(or0quohyeef4ii.jai]P1o
# OFaeTah7eec1aevohgheehahg3gai.gheef3chi2
# to?e\xei%ng2aeko7li4ieziet^ireiQuaimon9n
# eewaethaj0voo6eib2ou8udohga'yoo0Oi6Eekoo
# ohmei1wei2baiche5que6aiw8ein9yoob~e0Thai
# aiquohnovie9ugh8vef6pohYu3eeToh9deiHi>u8
# uu6aifaeyosh%eephah!aesh}ee8ofaequ>eeLi#
# aewi2zie5ooZaiso0Eero.a7boo(k\ah%l8Ieche
# aeque4mae:c2aecah6phoophaeyaix8No3shee7e
# sojo?pieghiQuoo'p9eQu5tho6ing#uk9caecho\
# aG5shoo9oopao3Iew6Yuthei=y2aizae7ooxei@C
# choW2eiwee4Mie1hepho7AhcioShe5ru.c1phae>
# ahch{a3si4Veik4Ra7Biokie2chai[Shood6ahch
# daer7EeSoo@wohxoo7nahg[oh]to9jee1zohjobo
# heichu.VaaPhepee5aith2theegh9EiPh9Ahnahv
# ahriaveli?gh4ielaecaijeis1nie7Yaet7UhooJ
# aiph9Ohghahthe}ng6mee4ei]chah0IeSho)ghai
# esh8oor3aihuFashoik4sei7ohr/ahLae7eefie3
# ief0vohgh@ee<V2aef3vae8zohnga!Dah8eiwoo0

# - check if ssh service is running if not, install with sudo apt install openssh-server
sudo service ssh status
# ● ssh.service - OpenBSD Secure Shell server
#      Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor preset: enabled)
#      Active: active (running) since Wed 2024-08-14 13:04:57 CEST; 2h 4min ago
#        Docs: man:sshd(8)
#              man:sshd_config(5)
#     Process: 232 ExecStartPre=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
#    Main PID: 265 (sshd)
#       Tasks: 1 (limit: 9163)
#      Memory: 4.6M
#      CGroup: /system.slice/ssh.service
#              └─265 "sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups"

# Aug 14 13:04:57 LAPTOP-2MMV0JVM systemd[1]: Starting OpenBSD Secure Shell server...
# Aug 14 13:04:57 LAPTOP-2MMV0JVM sshd[265]: Server listening on 0.0.0.0 port 22.
# Aug 14 13:04:57 LAPTOP-2MMV0JVM sshd[265]: Server listening on :: port 22.
# Aug 14 13:04:57 LAPTOP-2MMV0JVM systemd[1]: Started OpenBSD Secure Shell server.

# - create keypair
cd
mkdir .ssh
chmod 740 .ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/haris.asus.rog
# Generating public/private rsa key pair.
Enter passphrase (empty for no passphrase): "ief0vohgh@ee<V2aef3vae8zohnga!Dah8eiwoo0"
Enter same passphrase again: "ief0vohgh@ee<V2aef3vae8zohnga!Dah8eiwoo0"
# Your identification has been saved in /home/harris/.ssh/haris.asus.rog
# Your public key has been saved in /home/harris/.ssh/haris.asus.rog.pub
# The key fingerprint is:
# SHA256:PrXkJfj44GZ6hi9lKs4b6Fvm8xwy78hNnGQuaBbu/Tc harris@LAPTOP-2MMV0JVM
# The key's randomart image is:
# +---[RSA 4096]----+
# |                 |
# |                 |
# |                 |
# |         .       |
# |  .   o S + .    |
# | . + = oo* +     |
# |  * B *== +      |
# | = Bo@+oE+       |
# |  +oOBOXo..      |
# +----[SHA256]-----+

# - if ssh is not running:
sudo service ssh start

# - allow ssh in firewall
sudo ufw allow ssh

##########################################################
# upload public keypair to github
##########################################################

# - install git
sudo apt install git
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# git is already the newest version (1:2.34.1-1ubuntu1.11).
# 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.

# - fetch pubkey
cat .ssh/haris.asus.rog.pub
# *************************************************

# - upload to github through web browser
"https://github.com/settings/ssh/new"

# Add new SSH Key
# Title
"haris.asus.rog.pub"

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
  IdentityFile ~/.ssh/haris.asus.rog
EOF

# - Verify file
cat ~/.ssh/config
# Host github.com
#   HostName github.com
#   User git
#   IdentityFile ~/.ssh/haris.asus.rog

# - Create source directory
cd
mkdir src
cd src

# - Clone repo
git clone git@github.com:JensenEducationKista/MAR24.git
# Cloning into 'MAR24'...
Enter passphrase for key '/home/harris/.ssh/haris.asus.rog': "ief0vohgh@ee<V2aef3vae8zohnga!Dah8eiwoo0"
# remote: Enumerating objects: 55, done.
# remote: Counting objects: 100% (55/55), done.
# remote: Compressing objects: 100% (43/43), done.
# remote: Total 55 (delta 23), reused 39 (delta 10), pack-reused 0 (from 0)
# Receiving objects: 100% (55/55), 32.55 KiB | 370.00 KiB/s, done.
# Resolving deltas: 100% (23/23), done.

# - Push changes to remote repository
cd MAR24
mkdir haris
cd haris

