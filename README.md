# azure-aks-kubectl

This Docker image includes Azure CLI 2 and kubectl. It can be used for setting up and connecting
to an AKS cluster

## Building the container
```
docker built -t azure-aks-kubectl .
```

## Running the container
```
docker run -ti -p 8001:8001 -v $HOME:/root azure-aks-kubectl
```
Be aware aware that you local k8s & az config is persisted in your homedir

## Setting up AKS cluster
See https://docs.microsoft.com/en-us/azure/aks/kubernetes-walkthrough

## Connecting to K8s-Dashboard
Inside the container, run: 

```
kubectl proxy --address 0.0.0.0 -p 8001
```

In the browser on your localhost, go to: 

  http://localhost:8001/api/v1/namespaces/kube-system/services/http:kubernetes-dashboard:/proxy/#!/overview?namespace=default
