#!/bin/bash
curl -sfL https://get.k3s.io | sh -


## TO DO
# change the hostname

# change default password

# generate SSH keypair

# Append extra options to kernel cli
#sudo sed -i '$ s/$/ cgroup_enable=cpuset cgroup_enable=memory cgroup_memory=1 swapaccount=1/' /boot/cmdline.txt
