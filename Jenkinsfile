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
        	checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[ url: 'https://github.com/soumyarout80/k8s_deployment.git']]])
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

      	stage ('Kubernetes Deploy') {
			  steps{
            	sh "echo 'shell scripts to deploy to server...'"
			  }
      	} 
	}
}