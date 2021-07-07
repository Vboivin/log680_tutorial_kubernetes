# Tuto K8s LOG680
- You will find all the links and documents I used in the video here

# Links
- Install kubectl: https://kubernetes.io/docs/tasks/tools/
- Manage K8s resources: https://kubernetes.io/docs/concepts/cluster-administration/manage-deployment/
- Krew (kubectl plugins manager): https://krew.sigs.k8s.io/
- Secrets: https://kubernetes.io/docs/concepts/configuration/secret/
- DockerHub Credentials in K8s: https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/
- ConfigMaps: https://kubernetes.io/docs/concepts/configuration/configmap/
- Pods: https://kubernetes.io/docs/concepts/workloads/pods/
- Deployments: https://kubernetes.io/docs/concepts/workloads/controllers/deployment/

# Manifests
- All the manifests are in the folder manifests/

# kubectl commands
- To create a resource from a manifest called test.yml: kubectl apply -f test.yml
- To lookup a type of resource in the cluster: kubectl get RESOURCE_TYPE --namespace/-n YOUR_NAMESPACE RESOURCE_NAME
- To see more details about a resource in the cluster: kubectl describe RESOURCE_TYPE --namespace/-n YOUR_NAMESPACE RESOURCE_NAME
- To delete a resource: kubectl delete RESOURCE_TYPE --namespace/-n YOUR_NAMESPACE RESOURCE_NAME

