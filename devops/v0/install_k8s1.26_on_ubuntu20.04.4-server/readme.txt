

# 配置
ubuntu-20.04.4-live-server-amd64.iso


# 常用命令
kubectl get pods -A
kubectl get pods --all-namespaces -o wide


# debug pod
kubectl describe pod -n kube-flannel   kube-flannel-ds-qfzsd


# 查看 某个 pod的日志 
kubectl logs istiod-dbf5ff64-mbnk5 -n istio-system

kubectl describe pod  istiod-dbf5ff64-mbnk5 -n istio-system
# 然后发现 在pull image

# 观察到如下行为 （Ready才算完全成功）

# kubectl get nodes
NAME      STATUS   ROLES           AGE   VERSION
cloud11   Ready    control-plane   17m   v1.27.1


# 查看 node使用的容器引擎
kubectl get nodes -o wide

# 可以查看到
kubectl get rs -A -o wide

# 完全卸载 doker
apt-get purge docker.io
