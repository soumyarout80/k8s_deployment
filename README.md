# k8s_deployment :rocket:
> Automating the deployment process pipeline, to containerize and deploy the application to Kubernetes.

### Project Structure and deployment pipeline files!

* [Docker](Dockerfile)
* [Jenkinsfile](Jenkinsfile)
* [Kubernetes deployment](kubernetes/deployment.yml)
* [Kubernetes ingress](kubernetes/deployment.yml)
* [Ansible playbook](Ansible/docker_build_push.yml)

## Manual Deployment

Use the below commands to deploy ingress and app.

```bash
kubectl -n openstad apply -f ingress.yml 
kubectl -n openstad apply -f deployment.yml
```