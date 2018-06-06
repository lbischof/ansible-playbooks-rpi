# Ansible Playbooks for my Raspberry PI

https://gitlab.com/lbischof/ansible-playbooks-rpi
![Moved to GitLab](https://i.imgur.com/wGgvnPq.png)

## Requirements
Kodi addon for turning on TV: https://github.com/joshjowen/script.json-cec

After running the playbook:
```
sudo systemctl stop nginx
sudo certbot certonly --standalone --preferred-challenges http-01 -d <domain>
```
