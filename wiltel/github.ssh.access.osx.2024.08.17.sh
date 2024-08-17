mkdir .ssh
#mkdir: .ssh: File exists

chmod 740 .ssh/

ssh-keygen -t rsa -b 4096 -f ~/.ssh/wiltel.mac
#Generating public/private rsa key pair.
#/Users/williamtell/.ssh/wiltel.mac already exists.
#Overwrite (y/n)? y
#Enter passphrase (empty for no passphrase):
#Enter same passphrase again:
#Your identification has been saved in /Users/williamtell/.ssh/wiltel.mac
#Your public key has been saved in /Users/williamtell/.ssh/wiltel.mac.pub
#The key fingerprint is:
#SHA256:HqDtUWABQJT3ggW13+SF/rOMMDGLwTsfA36qHhhfzLs williamtell@williams-MacBook.local
#The key's randomart image is:
#+---[RSA 4096]----+
#| o==o.+.         |
#|  . oo . .       |
#|   +... + .      |
#|  .+.+.B .       |
#|.   O.* S        |
#| + o B * o       |
#|. o * O . o      |
#|   . * = o o     |
#| .o.E . . o      |
#+----[SHA256]-----+
ssh
ssh-add --apple-use-keychain ~/.ssh/wiltel.mac
#Enter passphrase for /Users/williamtell/.ssh/wiltel.mac:
#Identity added: /Users/williamtell/.ssh/wiltel.mac (williamtell@williams-MacBook.local)

ls -la
total 288
drwxr-x---+ 30 williamtell  staff    960 Aug 17 18:03 .
drwxr-xr-x   5 root         admin    160 Aug  8 09:29 ..
-r--------   1 williamtell  staff      7 Aug  8 09:29 .CFUserTextEncoding
-rw-r--r--@  1 williamtell  staff  10244 Aug 16 15:23 .DS_Store
drwx------+  5 williamtell  staff    160 Aug 14 01:57 .Trash
-rw-r--r--   1 williamtell  staff     38 Aug 14 15:44 .bash_profile
drwxr-xr-x  10 williamtell  staff    320 Aug 14 01:19 .docker
drwxr-xr-x  23 williamtell  staff    736 Aug 14 15:52 .oh-my-zsh
drwxr-----   6 williamtell  staff    192 Aug 17 17:56 .ssh
drwxr-xr-x   3 williamtell  staff     96 Aug 17 17:21 .vim
-rw-------   1 williamtell  staff   2045 Aug 17 17:21 .viminfo
drwxr-xr-x   3 williamtell  staff     96 Aug 17 17:18 .warp
-rw-r--r--   1 williamtell  staff  48254 Aug 14 16:13 .zcompdump-william’s MacBook-5.8.1
-rw-r--r--   1 williamtell  staff  50301 Aug 14 16:13 .zcompdump-william’s MacBook-5.9
-rw-r--r--   1 williamtell  staff    120 Aug 13 21:09 .zprofile
-rw-------   1 williamtell  staff   5148 Aug 17 18:03 .zsh_history
drwx------  21 williamtell  staff    672 Aug 14 16:17 .zsh_sessions
-rw-r--r--   1 williamtell  staff   4052 Aug 14 16:13 .zshrc
-rw-r--r--   1 williamtell  staff     38 Aug 14 15:43 .zshrc.pre-oh-my-zsh
drwx------+  3 williamtell  staff     96 Aug  8 09:29 Desktop
drwx------+  3 williamtell  staff     96 Aug  8 09:29 Documents
drwx------+ 12 williamtell  staff    384 Aug 16 15:11 Downloads
drwx------@ 79 williamtell  staff   2528 Aug 13 20:20 Library
drwx------   4 williamtell  staff    128 Aug 14 01:44 Movies
drwx------+  3 williamtell  staff     96 Aug  8 09:29 Music
drwx------+  4 williamtell  staff    128 Aug  8 10:42 Pictures
drwxr-xr-x+  4 williamtell  staff    128 Aug  8 09:29 Public
drwxr-xr-x   4 williamtell  staff    128 Aug 13 20:29 VirtualBox VMs
drwxr-xr-x   2 williamtell  staff     64 Aug 14 16:28 src
drwxr-xr-x   2 williamtell  staff     64 Aug 13 20:24 ubuntu

vi .warp/

vi .warp/

vi .warp/

open .

echo "ssh-add --apple-load-keychain ~/.ssh/wiltel.mac" >> .warp/
zsh: is a directory: .warp/

ls -la
total 72
drwxr-xr-x+  32 pinokio  staff   1024 Aug 14 16:39 .
drwxr-xr-x    5 root     admin    160 May 24 11:22 ..
-r--------    1 pinokio  staff      7 Nov 21  2020 .CFUserTextEncoding
-rw-r--r--@   1 pinokio  staff  12292 Aug 14 13:23 .DS_Store
drwx------    2 pinokio  staff     64 Aug  9 02:13 .Trash
drwx------    3 pinokio  staff     96 Feb  5  2024 .config
drwxr-xr-x    3 pinokio  staff     96 Oct 14  2022 .idlerc
drwx------@   3 pinokio  staff     96 Jan 29  2024 .local
-rw-r--r--    1 pinokio  staff    248 May 15 14:08 .packettracer
drwxr-----@   4 pinokio  staff    128 Aug 14 16:34 .ssh
drwxr-xr-x@   4 pinokio  staff    128 Jun 10  2023 .thumbnails
drwxr-xr-x@   3 pinokio  staff     96 Aug 14 16:39 .vim
-rw-------@   1 pinokio  staff   1436 Aug 14 16:39 .viminfo
drwxr-xr-x    5 pinokio  staff    160 Jan 15  2024 .vscode
drwxr-xr-x@   3 pinokio  staff     96 Aug 14 16:38 .warp
-rw-r--r--    1 pinokio  staff    166 Oct 13  2022 .zprofile
-rw-------@   1 pinokio  staff   3237 Aug 14 16:39 .zsh_history
drwx------    6 pinokio  staff    192 Aug 14 13:59 .zsh_sessions
drwx------@   7 pinokio  staff    224 Feb  1  2024 Applications
drwxr-xr-x   10 pinokio  staff    320 May 15 14:08 Cisco Packet Tracer 8.2.2
drwx------@  18 pinokio  staff    576 Aug 14 16:15 Desktop
drwx------@  23 pinokio  staff    736 Aug 14 16:32 Documents
drwx------@  29 pinokio  staff    928 Aug 14 16:15 Downloads
drwx------@ 113 pinokio  staff   3616 Mar 23 07:42 Library
drwx------+   7 pinokio  staff    224 Nov  3  2023 Movies
drwx------+   6 pinokio  staff    192 Aug 11 16:13 Music
drwxr-xr-x@   2 pinokio  staff     64 Jun 10  2023 New Folder
drwx------+   4 pinokio  staff    128 Nov 21  2020 Pictures
drwxr-xr-x+   4 pinokio  staff    128 Nov 21  2020 Public
drwxr-xr-x    4 pinokio  staff    128 Aug 11 12:40 VirtualBox VMs
drwxr-xr-x    2 pinokio  staff     64 Aug 11 12:40 VirtualBox administration
drwxr-xr-x   17 pinokio  staff    544 Aug  4 14:55 Zomboid

cat .config
cat: .config: Is a directory

ssh-add --apple-load-keychain ~/.ssh/wiltel.mac
Identity added: /Users/williamtell/.ssh//wiriamo.king.hp (williamtell@williams-MacBook.local)
Identity added: /Users/williamtell/.ssh/wiltel.mac (williamtell@williams-MacBook.local)

brew install jumpcut
==> Downloading https://formulae.brew.sh/api/formula.jws.json
################################################################### 100.0%
==> Downloading https://formulae.brew.sh/api/cask.jws.json
################################################################### 100.0%
Warning: Not upgrading jumpcut, the latest version is already installed

cat .ssh/wiltel.mac.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDW3s8pFHis1B3p5QEvRmUJIOaw6GioTpwqD0L/Dycgigvq+D42lVphfdzGSGDh0HYBTB/GOsPifjbTsBoI2EW8AWN6dxeYewmjnhN4YzD4h8RNCeHeRYQs+E7VfQpiHw3OxfgzL9WNW43PpKcSFBxgcTQ62CK72OASxeowOmgzey6ZdFO7M2e3HErwSKJWazoKqMt4/HMytFIMhyEsg+LKc0Tat45bxtJHwbLblvRmKgsF/1K53n54F89Ybm/EtN663kGT+2SFVloiPBjmngm7TKysJcbf+8bBMoRLFYaNOkaOQIsEmADSI3iVyJEoj1F+9/swUDw0vjLvyUB+ejak0rTfegl4CGspAqan45YvBtWHg3J9zyB24aPEtqzQ1AW9HdglOCb2FQKdZDtTs6H6UWBf9CO89l+eGWC1Da6seXClazMUqJmNQiUmDaW9i3JfWAqv6H4SMLi4IwPzMPLL8QoCrXgB3HB6nQQIB47XTzVvi6vs6IGAAzpbIJ+oH0X45NBHnX31PhWuec87kSIYQHB08B7vVTP1C785h0Wf0kzXG+Xn/HQtTWFtSYr7mB/221N0LmtxtdZQOejycwrr5Qet52+suq5ugIH32+TexZ4GenBpm4OpOohyQamI5PusnGPcuy635W4aFJCpSTNg9TYty3zKC9FOg1PASeY8rQ== williamtell@williams-MacBook.local

cat .ssh/wiltel.mac.pub | pbcopy

mkdir src
mkdir: src: File exists

cd src/

git clone git@github.com:JensenEducationKista/MAR24.git
Cloning into 'MAR24'...
remote: Enumerating objects: 78, done.
remote: Counting objects: 100% (78/78), done.
remote: Compressing objects: 100% (60/60), done.
remote: Total 78 (delta 29), reused 60 (delta 14), pack-reused 0 (from 0)
Receiving objects: 100% (78/78), 37.32 KiB | 419.00 KiB/s, done.
Resolving deltas: 100% (29/29), done.

cd mar24
mkdir wiltel
cd wiltel
git status
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean

ls
README.md				hamza
github.ssh.access.osx.2024.08.17.sh	jeff
mkdir wiltel.mac

git checkout -b wiltel-assignment
Switched to a new branch 'wiltel-assignment'

ls
README.md				github.ssh.access.osx.2024.08.17.sh	jeff
azim					hamza
cd wiltel.mac

vi github.ssh.access.osx.assignment.2024.08.17.sh
