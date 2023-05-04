wget https://github.com/istio/istio/releases/download/1.17.2/istio-1.17.2-linux-amd64.tar.gz
tar -zxvf istio-1.17.2-linux-amd64.tar.gz

# 参考来源：https://istio.io/latest/zh/docs/setup/getting-started/#download
cd istio-1.17.2
export PATH=$PWD/bin:$PATH

istioctl install --set profile=demo -y
 kubectl label namespace default istio-injection=enabled

kubectl apply -f samples/bookinfo/platform/kube/bookinfo.yaml
kubectl get services

kubectl get pods
kubectl exec "$(kubectl get pod -l app=ratings -o jsonpath='{.items[0].metadata.name}')" -c ratings -- curl -sS productpage:9080/productpage | grep -o "<title>.*</title>"
<title>Simple Bookstore App</title>



