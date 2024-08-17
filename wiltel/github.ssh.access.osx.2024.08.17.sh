
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
README.md                               hamza
github.ssh.access.winx.2024.06.14.sh    jeff
mkdir wiltel.mac

git checkout -b wiltel-assignment
Switched to a new branch 'wiltel-assignment'

ls
README.md                               github.ssh.access.winx.2024.06.14.sh    jeff
azim                                    hamza
cd wiltel.mac

vi github.ssh.access.osx.assignment.2024.08.14.sh
