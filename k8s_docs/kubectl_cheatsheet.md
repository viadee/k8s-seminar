# kubectl

## Config & Cluster-Info
```
# Default-Namespace ändern
kubectl config set-context $(kubectl config current-context) --namespace=<name>
kubectl config view

kubectl cluster-info
kubectl get nodes
```

## Allgemein
```
kubectl get <type>
kubectl get <type> <name> -o yaml
kubectl explain <type>          # Ressourcen-Definition beschreiben
kubectl describe <type> <name>  # Ressourcen-Instanz beschreiben
kubectl delete <type> <name>

kubectl get -h                  # alle Ressource-Definitionen auflisten
```

## Umgang mit YAMl-Files
```
kubectl create -f file.yaml
kubectl apply-f file.yaml
kubectl delete -f file.yaml
```

## Pods
```
kubectl get pods
kubectl get pod <podname> -o yaml   # oder json
kubectl logs <pod>
kubectl describe pod <pod>

kubectl run testpod --image <image-uri> --dry-run=client -oyaml > testpod.yaml  # Grundgerüst für Pod-YAML generieren

kubectl exec -it <pod> -- /bin/sh   # Shell in Pod
kubectl port-forward <pod> <port>   # Netzwerk-Tunnel zu Pod (localhost:<port>)
```

## Replica Sets
```
kubectl scale rs <name> --replicas=2
```

## Deployments
```
kubectl rollout status deployment <name>
kubectl rollout history deployment <name>
kubectl rollout undo deployment <name>
```

## Metriken
```
kubectl top node
kubectl top pod <pod>
```
