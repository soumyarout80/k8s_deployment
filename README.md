# k8s_deployment :rocket:
![Continuous Integration](https://github.com/GoogleCloudPlatform/microservices-demo/workflows/Continuous%20Integration%20-%20Master/Release/badge.svg)

> Automating the deployment process pipeline, to containerize and deploy the application to Kubernetes.


### Project Structure and deployment pipeline files! :sparkles:

* [Docker](Dockerfile)
* [Jenkinsfile](Jenkinsfile)
* [Kubernetes deployment](kubernetes/deployment.yml)
* [Kubernetes service](kubernetes/service.yml)
* [Kubernetes ingress](kubernetes/ingress.yml)
* [Ansible playbook k8s deployment](ansible/main.yml)
* [Ansible playbook docker latest tag](ansible/docker_latest_tag.yml)
* [Ruby project](src/http_server.rb)

### Manual Deployment 

Use the below commands to deploy ingress and app.

```bash
kubectl apply -f ingress.yml
kubectl apply -f namespace.yml
kubectl apply -f deployment.yml
kubectl apply -f service.yml
```

### Jenkins pipeline

![Jenkins pipeline](/images/k8s.jpg)

### Docker image repository
```bash
docker pull soumyarout80/task_adjust:latest
```

### Trigger by ansible
```bash
ansible-playbook ansible/docker_build.yml
ansible-playbook ansible/docker_latest_tag.yml
ansible-playbook ansible/main.yml
```

### Author

> **Name**: Soumya Ranjan Rout

> **Email**: soumyarout80@gmail.com
 

## License

See the [LICENSE](LICENSE) file for license rights and limitations (MIT).
