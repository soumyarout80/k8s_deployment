#!/usr/bin/env groovy

pipeline {
	stages {
        stage ('Checkout') {
			steps{
        	checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[ url: 'https://github.com/soumyarout80/k8s_deployment.git']]])
        }
	}
		// stage('Test') {
		// 	steps {
		// 		echo "$DOCKER_IMAGE" // will print selected image name with tag (eg. jenkins/jenkins:lts-jdk11)
		// 		echo "$DOCKER_IMAGE_TAG" // will print selected tag value (eg. lts-jdk11)
		// 		echo "$DOCKER_IMAGE_IMAGE" // will print selected image name value (eg. jenkins/jenkins)
		// 	}
		// }
		stage ('Docker Build and Docker Push') {
			steps{
				sh "cd k8s_deployment/ansible"
				sh "ansible-playbook docker_build.yml"
			}	
        }

        stage ('Tests') {
	        parallel 'static': {
	            sh "echo 'shell scripts to run static tests...'"
	        },
	        'unit': {
	            sh "echo 'shell scripts to run unit tests...'"
	        },
	        'integration': {
	            sh "echo 'shell scripts to run integration tests...'"
	        }
        }
      	stage ('Kubernetes Deploy') {
			  steps{
            	sh "echo 'shell scripts to deploy to server...'"
			  }
      	} 
	}
}