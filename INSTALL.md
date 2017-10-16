```
wget -O https://downloads.raspberrypi.org/raspbian_lite_latest
unzip raspbian_lite_latest
sudo dd if=2017*raspbian-stretch-lite.img of=/dev/sdd bs=4M status=progress
sudo mount /dev/sdd1 /mnt
sudo touch /mnt/ssh
sudo umount /mnt

# plug into rpi and wait

nmap -sP 192.168.0.1/24
# pw: raspberry
ssh pi@192.168.0.XXX curl https://github.com/lbischof.keys --create-dirs -o .ssh/authorized_keys
ansible-playbook playbook.yml
```
