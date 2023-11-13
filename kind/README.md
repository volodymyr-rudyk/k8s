
# kind

``` create kind cluster from config file
kind create cluster --config=cluster.yaml
```

install dashboard
```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml
```

colima start local --network-address --network-driver slirp --very-verbose

kind create cluster --name kind-k8s --wait

``` create kind
kind create cluster --name kind-k8s --config kind-config-cluster.yaml
```
```install MetalLB
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.13.12/config/manifests/metallb-native.yaml
```


cluster config created -> ${HOME}/.kube/config



brew install docker
brew install colima
colima start --network-address
colima list

brew install kind

//
https://opencredo.com/blogs/building-the-best-kubernetes-test-cluster-on-macos/