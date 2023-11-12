# Kind 

## create cluster

```shell
kind create cluster --config=cluster.yaml 
```

## delete cluster

```shell
kind delete cluster --name=kind
```













# minikube enable ingress controller

## enable nginx ingress
minikube addons enable ingress

kubectl get pods -n kube-system



kind create cluster




istio install

kubectl create namespace istio-system

helm install istio-base istio/base -n istio-system

helm ls -n istio-system

helm install istiod istio/istiod -n istio-system --wait

