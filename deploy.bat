@echo off
set /p commitMsg=Enter commit message: 

git add .
git commit -m "%commitMsg%"
git push

ssh vps "cd /var/www/html && sudo git pull"