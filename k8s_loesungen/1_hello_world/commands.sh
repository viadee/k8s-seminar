# default namespace
kubectl config set-context $(kubectl config current-context) --namespace=schulung-xyz-dev

# create hello world deployment
kubectl run demo-app --image=viadee/k8s-demo-app --port=8080 

# observe, debug...
kubectl get pods
kubectl logs <pod>
kubectl describe pod <pod>

# expose
kubectl expose deployment demo-app --type=NodePort --name demo

# get port
kubectl get services

# http://cluster.intern.viadee.de:<port>

# delete
kubectl delete deployment demo-app
kubectl delete service demo