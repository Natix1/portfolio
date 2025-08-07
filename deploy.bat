@echo off
git add .
git commit -m "Update"
git push
ssh vps 'cd /var/www/html && sudo git pull'