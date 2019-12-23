kubectl apply -f argo-namespace.yaml -f install.yaml -n argocd
sleep 10
kubectl apply -f argo-secrets.yaml -f argo-configMap.yaml -f argo-argoApps.yaml -n argocd
#sleep 10
#kubectl delete --all pods -n argocd

sleep 10
echo "kubectl port-forward svc/argocd-server -n argocd 8080:443"

