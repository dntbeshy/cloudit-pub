

# 配置
ubuntu-20.04.4-live-server-amd64.iso


# 常用命令
kubectl get pods -A
kubectl get pods --all-namespaces -o wide


# debug pod
kubectl describe pod -n kube-flannel   kube-flannel-ds-qfzsd


# 观察到如下行为 （Ready才算完全成功）

# kubectl get nodes
NAME      STATUS   ROLES           AGE   VERSION
cloud11   Ready    control-plane   17m   v1.27.1

