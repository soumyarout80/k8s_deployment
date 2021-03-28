#!/usr/bin/env groovy

pipeline {
    environment {
		registry = "docker pull soumyarout80/task_adjust"
		registryCredential = '******'
	}
	agent { label 'master' }

	stages {
        stage ('Checkout') {
			steps{
        	git clone "https://github.com/soumyarout80/k8s_deployment.git"
        }
	}
		stage ('Docker Build and Docker Push') {
		    steps{
              script {
                sh "docker log -u soumyarout80 -p *******"
              }
            }
			steps{
			    sh "pwd"
				sh "ansible-playbook ansible/docker_build.yml"
			}	
        }
		stage ('Test latest build') {
		    steps{
              script {
                sh "echo 'Testing newly build image'"
              }
            }
        }
		stage ('Docker tag as latest') {
		    steps{
              script {
                sh "echo 'If it is a stable build the tag as latest and push'"
				sh "ansible-playbook ansible/docker_latest_tag.yml"
              }
            }
        }

      	stage ('Kubernetes Deploy') {
			  steps{
            	sh "ansible-playbook ansible/main.yml"
			  }
      	} 
	}
}