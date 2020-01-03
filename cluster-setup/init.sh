helm install namespaces ./namespaces --atomic && \
helm install argocd ./argocd --namespace argocd --dependency-update --atomic && \
sleep 10 && kubectl delete --all pods -n argocd # config Hack

echo "kubectl port-forward svc/argocd-server -n argocd 8080:443"
