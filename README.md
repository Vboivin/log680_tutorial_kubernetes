# Tuto K8s LOG680

## Links
- Install kubectl: https://kubernetes.io/docs/tasks/tools/
- Manage K8s resources: https://kubernetes.io/docs/concepts/cluster-administration/manage-deployment/
- Krew (kubectl plugins manager): https://krew.sigs.k8s.io/
- Secrets: https://kubernetes.io/docs/concepts/configuration/secret/
- DockerHub Credentials in K8s: https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/
- ConfigMaps: https://kubernetes.io/docs/concepts/configuration/configmap/
- Pods: https://kubernetes.io/docs/concepts/workloads/pods/
- Deployments: https://kubernetes.io/docs/concepts/workloads/controllers/deployment/
- Create your own cluster locally to test: https://kind.sigs.k8s.io/docs/user/quick-start/

## Manifests
- All the manifests are in the folder manifests/
- Those manifests are examples, you need to modify the namespaces unless you created your own cluster with something like "kind" 
- You will need to modify the image value at line 8 of hvac.yml
- For the configmap, you should modify the key name for the name you used for the env variables in your own code
- You will also need to create two secrets, one for the HVAC_TOKEN and another one for the DockerHub credentials 

## kubectl commands
- To create a resource from a manifest called test.yml: kubectl apply -f test.yml
- To lookup a type of resource in the cluster: kubectl get RESOURCE_TYPE --namespace/-n YOUR_NAMESPACE RESOURCE_NAME
- To see more details about a resource in the cluster: kubectl describe RESOURCE_TYPE --namespace/-n YOUR_NAMESPACE RESOURCE_NAME
- To delete a resource: kubectl delete RESOURCE_TYPE --namespace/-n YOUR_NAMESPACE RESOURCE_NAME

