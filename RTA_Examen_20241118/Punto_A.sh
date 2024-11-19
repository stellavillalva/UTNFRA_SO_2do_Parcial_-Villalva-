#!/bin/bash
sudo fdisk /dev/sdc << EOF
n
p



t
8E
w
EOF
sudo fdisk /dev/sdd << EOF
n
p



t
8E
w
EOF

sudo wipefs -a /dev/sdc1 /dev/sdd1
sudo pvcreate /dev/sdc1 /dev/sdd1
sudo pvs
sudo vgcreate vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1
sudo vgs
sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -L 512M vg_temp -n lv_swap
sudo lvs
sudo fdisk -l
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
sudo lsblk
sudo mkswap /dev/vg_temp/lv_swap
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo swapon /dev/vg_temp/lv_swap
df -h
sudo systemctl restart docker
sudo systemctl status docker << EOF
q
EOF

