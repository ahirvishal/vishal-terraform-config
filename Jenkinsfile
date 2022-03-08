pipeline {
    agent any

    stages {
      stage('Git Checkout') {
        steps {
          git branch: 'test', url: 'https://github.com/ahirvishal/vishal-terraform-config.git'
        }
      }

        stage('Terraform Init') {
            when {
                branch "test"
                // changeset "modules/*/*.tf"
            }
            steps {
                withCredentials([string(credentialsId: 'awsAccessKey', variable: 'awsAccessKey'), string(credentialsId: 'awsSecretKey', variable: 'awsSecretKey')]) {
                  // some block
                  bat "terraform --version"
                }
            }
        }
    }
}
