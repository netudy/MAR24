o This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Windows Subsystem for Linux Installation
##########################################################

# - Open Windows PowerShell
 wsl --install -d ubuntu or cmd 
 # Den begärda åtgärden kräver en privilegiehöjning.
 # Installerar valfri Windows-komponent: Microsoft-Windows-Subsystem-Linux
 # Virtual Machine Platform has been installed.
 # Installing: Windows Subsystem for Linux
 # Windows Subsystem for Linux has been installed.
 # Installerar: Ubuntu
 # Ubuntu har installerats.
 # Den begärda åtgärden lyckades. Ändringarna kommer inte att träda i kraft förrän datorn startats om.

 # - reboot computer
 # - after reboot Ubuntu cmd will pop up:

 # Ubuntu is already installed.
 # Launching Ubuntu...
 # Installing, this may take a few minutes...
 # Please create a default UNIX user account. The username does not need to match your Windows username.
 # For more information visit: https://aka.ms/wslusers
 Enter new UNIX username: "sebbe"
 New password: "sebbe"
 Retype new password: "sebbe"
 # passwd: password updated succsessfully
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
 [sudo] password for sebbe: "sebbe"
 # Get:1 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
 # [...]
 # Fetched 33.1 MB in 7s (4667 kB/s)
 # Reading package lists... Done
 # Building dependency tree... Done
 # Reading state information... Done
 # 119 packages can be upgraded. Run 'apt list --upgradable' to see them.

 sudo apt upgrade
 # Reading package lists... Done
 # Building dependency tree... Done
 # Reading state information... Done
 # Calculating upgrade... Done
 # The following NEW packages will be installed:
 # [...]
 Do you want to continue? [Y/n] "y"
 # Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libc-dev-bin amd64 2.35-0ubuntu3.8 [20.3 kB]
 # Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 linux-libc-dev amd64 5.15.0-118.128 [1342 kB]
 # Get:3 http://archive.ubuntu.com/ubuntu jammy/main amd64 libcrypt-dev amd64 1:4.4.27-1 [112 kB]
 # Get:4 http://archive.ubuntu.com/ubuntu jammy/main amd64 rpcsvc-proto amd64 1.4.2-0ubuntu6 [68.5 kB]
 # Get:5 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libtirpc-dev amd64 1.3.2-2ubuntu0.1 [192 kB]
 # Get:6 http://archive.ubuntu.com/ubuntu jammy/main amd64 libnsl-dev amd64 1.3.0-2build2 [71.3 kB]
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
 # Fetched 17.4 kB in 0s (90.4 kB/s)
 # Selecting previously unselected package pwgen.
 # (Reading database ... 31447 files and directories currently installed.)
 # Preparing to unpack .../pwgen_2.08-2build1_amd64.deb ...
 # Unpacking pwgen (2.08-2build1) ...
 # Setting up pwgen (2.08-2build1) ...
 # Processing triggers for man-db (2.10.2-1) ...

 # - create a password 40 chars, numbers and symbols
 pwgen -y -n 40
 # fai3Shiedie/j3ahj0ohxier9toow7eiCeiph~ai
 # ughieNoowu4AhCh-e=eb6aip\o6Ohhieb?euwai7
 # nailaeWooghiboh/v9uqu8Aije,o*Gi}u9aiso3J
 # ievahv1uGahPh2noomeih5aiPohthu4ne0ieM$u3
 # ahbow$ah7eit6Gu3ACh(u?wahni@th<i2viech>i
 # mohchai9queiChi2Ech9die7YuGo7uu?VoongeiB
 # eesei7tuup:aeChaichaqu9air3ekei3phe7Bee5
 # aer6ahph"aivah3se5Oode{a1shi5naeFaecheil
 # ahch6toh=Phoo@ngiet0iech6ahch.oofei;t2eP
 # su{Qu3choh2aighah-MeesuBoo7aipeem0iteiqu
 # aeGhohZ8esh0Ael0se^e?Yai0aziepoosh8di5wi
 # peb5Eelu3koof4aigheem}ei@Queethiel8aiVoo
 # pai>quoo/k^oy9ChaiquuveeW2oF<oofoshohLo2
 # xainoh2Aij6eebo6ue(xeicai{t;iC,eef9rohg5
 # za4ja8goh:kei8thei[sh@aich6keiThae1OhgeT
 # euth#ai7wohqu3uph8Ieng3eex5Eich6ze5voMee
 # Jee2IW3OoP7oothu\ghohh^ei5shoh>r9reeyae0
 # ruH2hitahMah6Ohl_aileij4enoDa;sa2oot$ei9
 # theigooc#eNieh!ojeiShai?te4ua1thipheerae
 # coo3vahz~oK6ec7ooj0ohyichioGh8aefief1xad

 # - check if ssh service is running
 sudo service ssh status
 # Unit ssh.service could not be found.

 # - in wsl install openssh
 sudo apt install openssh-server
 # #Reading package lists... Done
 # Building dependency tree... Done
 # Reading state information... Done
 # The following additional packages will be installed:
 #   libwrap0 ncurses-term openssh-sftp-server ssh-import-id
 # Suggested packages:
 #   molly-guard monkeysphere ssh-askpass
 # The following NEW packages will be installed:
 #   libwrap0 ncurses-term openssh-server openssh-sftp-server ssh-import-id
 # 0 upgraded, 5 newly installed, 0 to remove and 2 not upgraded.
 # Need to get 799 kB of archives.
 # After this operation, 6157 kB of additional disk space will be used.
 Do you want to continue? [Y/n] "y"
 # Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-sftp-server amd64 1:8.9p1-3ubuntu0.10 [38.9 kB]
 # Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libwrap0 amd64 7.6.q-31build2 [47.9 kB]
 # Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-server amd64 1:8.9p1-3ubuntu0.10 [435 kB]
 # Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 ncurses-term all 6.3-2ubuntu0.1 [267 kB]
 # # [...]

 # - create keypair
 cd
 mkdir .ssh
 chmod 740 .ssh/
 ssh-keygen -t rsa -b 4096 -f ~/.ssh/sebbe.tann.hp
 Enter passphrase (empty for no passphrase): "jie5ahF"u1aecoo(g9aal2thaep2zaSh4joo2noo"
 Enter same passphrase again: "jie5ahF"u1aecoo(g9aal2thaep2zaSh4joo2noo"
 Your identification has been saved in /home/sebbe/.ssh/sebbe.tann.hp
 Your public key has been saved in /home/sebbe/.ssh/sebbe.tann.hp.pub
 The key fingerprint is:
 SHA256:sK8qg/U6xJDie9i8Bv4+6W9+49UVlCFYVafbsQFO5Bw sebbe@LAPTOP-PHVMAQEC
 The key's randomart image is:
 +---[RSA 4096]----+
 |          oooE+..|
	 |         .  B.o..|
	 | .    .      =.o |
	 |+      o      .o+|
	 |oo    . S    ....|
	 | o+    .  . .    |
	 |.+*..   .. .     |
	 |.++B.. +.        |
	 |  BXB++..        |
	 +----[SHA256]-----+

 # - start ssh service
 'sudo service ssh start

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
 cat .ssh/sebbe.tann.hp.pub
 #ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDXi07NN7IPMz53/6Ebs11bfvfg71yZH65vZDBXIINJefzhbFZm8esKT94vYEZruPVjLdhM7RsqREWAra8trqSDwxKGqDPuUs8sNSvDjAt+aP21UN6yMPP+e/yQFVQRpWdjIY3Z4Fpx2ueatTxlgPAFAYhKkVmTXLZyVy3k5/MU/L6WbI6hmRby/PQukz5lSKhmXQ8hoful2m0qcOUJSTKcYp/LTYYoIoaKbrVklV+tssitrITa+bfBS34gHLbz6mGGBV7A278qqAl/ztIhLA4r73yRxk1UeYpnVTVEKR6ta/FTcN50qAD/D4Q0J8zPciKkB9Z9ZiHE5XdVPc18ps+Po2c1/jQcL742/A/hHTxKkdh7hg3TLtpw2mFjG4T842nXqUXKAfPBQJsw5oKWwGq+xbLxZ/LiD6abC/fkcqtyhgxImz9yqAx7jjKd1zsh3cQWsKwvm5S6ERKtww7SCBRxA3X7IqABSMHpnmrlKMO2FtMpZTR+HjjKXzgcxQYBPwmSjA9d2Z/C0pKuNSwKgYegmQaTnNpwWQzxNVY4rGKMmQfFFokSaqPPp8Gd18cHROE1hbv2E62L9ttL6Gnj+R/VPLOtlXvZISXhIgr2/mEaXO7+SxxyJGMIn9g4z8oaJaLbRPzlHO4etlKK5rmTK00tvSYiPXZFtphqLqDcDoB5GQ== sebbe@LAPTOP-PHVMAQEC 
 # - upload to github
 "https://github.com/settings/ssh/new"

 # Add new SSH Key
 # Title
 "sebbe.tann.hp"

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
  IdentityFile ~/.ssh/sebbe.tann.hp
EOF

# - Create source directory
cd
mkdir src
cd src

# - Clone repo
git clone git@github.com:JensenEducationKista/MAR24.git
# Cloning into 'KB-MAR24'...
Enter passphrase for key '/home/sebbe/.ssh/sebbe.tann.hp': "jie5ahF"u1aecoo(g9aal2thaep2zaSh4joo2noo"
# #remote: Enumerating objects: 6, done.
# remote: Counting objects: 100% (6/6), done.
# remote: Compressing objects: 100% (4/4), done.
# remote: Total 6 (delta 0), reused 6 (delta 0), pack-reused 0
# Receiving objects: 100% (6/6), 4.12 KiB | 1.03 MiB/s, done.

# - Push changes to remote repository
cd MAR24
mkdir sebbe
cd sebbe
cd
vi github.ssh.access.winx.2024.08.12.sh
cd src/MAR24/
git status
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean# Untracked files:
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
git config --global user.name "sebbe"
git config --global user.email no@email.com
git commit -am "verify previous documentation"
# On branch main
# Your branch is ahead of 'origin/main' by 1 commit.
#   (use "git push" to publish your local commits)

# nothing to commit, working tree clean
git push --set-upstream origin ali_doc_verification
