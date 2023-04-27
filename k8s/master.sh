
kubeadm init --image-repository=registry.cn-hangzhou.aliyuncs.com/google_containers --pod-network-cidr=10.244.0.0/16
export KUBECONFIG=/etc/kubernetes/admin.conf
echo "export KUBECONFIG=/etc/kubernetes/admin.conf" > ~/.profile
kubectl apply -f https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml
reboot

