# k8s_deployment :rocket:
> Automating the deployment process pipeline, to containerize and deploy the application to Kubernetes.

### Project Structure and deployment pipeline files! :sparkles:

* [Docker](Dockerfile)
* [Jenkinsfile](Jenkinsfile)
* [Kubernetes deployment](kubernetes/deployment.yml)
* [Kubernetes service](kubernetes/service.yml)
* [Kubernetes ingress](kubernetes/ingress.yml)
* [Ansible playbook](ansible/docker_build_push.yml)
* [Ruby project](src/http_server.rb)

### Manual Deployment 

Use the below commands to deploy ingress and app.

```bash
kubectl -n openstad apply -f ingress.yml 
kubectl -n openstad apply -f deployment.yml
```

### Jenkins pipeline

![Jenkins pipeline](/images/k8s.jpg)