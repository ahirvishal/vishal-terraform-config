pipeline {
    agent any

    stages {
        stage('Terraform Init') {
            when {
                branch "test"
                // changeset "modules/*/*.tf"
            }
            steps {
                withCredentials([string(credentialsId: 'awsAccessKey', variable: 'awsAccessKey'), string(credentialsId: 'awsSecretKey', variable: 'awsSecretKey')]) {
                  // some block
                  bat " terraform init -var 'awsAccessKey=${awsAccessKey}' -var 'awsSecretKey=${awsSecretKey}' "
                }
            }
        }
    }
}
