##installation steps

```
sudo apt-get update
sudo apt-get install git -y
ssh-keygen -t rsa -b 4096  -f ~/.ssh/id_rsa -P ""
git clone https://github.com/lefterisALEX/raspberrypi-k3s.git
cd raspberrypi-k3s/
sudo cp ssh-relay.service  /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable ssh-relay
sudo systemctl start ssh-relay
sudo ./set-hostname.sh
sudo sed -i '$ s/$/ cgroup_enable=cpuset cgroup_enable=memory cgroup_memory=1/' /boot/cmdline.txt
curl -sfL https://get.k3s.io | sh -
sudo kubectl apply -f  speedtest-job.yml
```
