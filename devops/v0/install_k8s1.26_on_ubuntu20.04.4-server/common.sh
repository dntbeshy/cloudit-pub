




#!/bin/bash


# test ok on: ubuntu-20.04.4-live-server-amd64.iso

cp /etc/fstab /etc/fstab.bak
sed -i '/\sswap\s/s/^/#/' /etc/fstab
cat /etc/fstab

# timedatectl set-timezone Asia/Shanghai

# docker may not be necessary for k8s any more 
# sudo apt-get install -y docker.io=20.10.21-0ubuntu1~20.04.1
# systemctl start docker
# systemctl enable docker

sudo apt-get update && sudo apt-get install -y apt-transport-https curl
# curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
wget http://packages.cloud.google.com/apt/doc/apt-key.gpg
apt-key add ./apt-key.gpg
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

sudo apt-get update
apt-cache madison kubeadm | grep 1.26
apt install -y kubelet=1.26.1-00 kubeadm=1.26.1-00 kubectl=1.26.1-00 
#auto: apt install -y kubernetes-cni=1.26.1-00
sudo apt-mark hold kubelet kubeadm kubectl
systemctl start kubelet
systemctl enable kubelet

# extra install & conf
apt  install -y nmon jq tree net-tools
# apt install -y docker-compose

cat> /etc/docker/daemon.json << EOF
{
 "registry-mirrors": ["https://docker.nju.edu.cn/"],
 "log-driver":"json-file",
 "log-opts": {"max-size":"100m", "max-file":"3"},
 "max-concurrent-downloads": 10,
 "max-concurrent-uploads": 10
}
EOF
systemctl daemon-reload
systemctl restart docker # service docker restart

docker info
