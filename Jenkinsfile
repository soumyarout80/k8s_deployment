node {
 	// Clean workspace before doing anything
    deleteDir()

    try {
        stage ('Checkout') {
        	checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[ url: 'https://github.com/soumyarout80/k8s_deployment.git']]])
        }

        stage ('Docker Build') {
        	sh "echo 'shell scripts to build project...'"
        }

		stage ('Docker Push') {
        	sh "echo 'shell scripts to build project...'"
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
            sh "echo 'shell scripts to deploy to server...'"
      	}
    } catch (err) {
        currentBuild.result = 'FAILED'
        throw err
    }
}