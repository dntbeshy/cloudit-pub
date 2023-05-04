

# ref: https://istio.io/latest/zh/docs/setup/getting-started/
curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.17.2 TARGET_ARCH=x86_64 sh -
cd istio-1.17.2
export PATH=$PWD/bin:$PATH


istioctl install --set profile=demo -y


sleep 7200
kubectl label namespace default istio-injection=enabled

kubectl apply -f samples/bookinfo/platform/kube/bookinfo.yaml
kubectl get services


