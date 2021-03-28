#!/usr/bin/env groovy

pipeline {
	agent { label 'master' }

	stages {
        stage ('Checkout') {
			steps{
        	checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[ url: 'https://github.com/soumyarout80/k8s_deployment.git']]])
        }
	}
		stage ('Docker Build and Docker Push') {
			steps{
				sh "cd k8s_deployment/ansible"
				sh "ansible-playbook docker_build.yml"
			}	
        }

      	stage ('Kubernetes Deploy') {
			  steps{
            	sh "echo 'shell scripts to deploy to server...'"
			  }
      	} 
	}
}