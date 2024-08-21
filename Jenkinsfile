pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/millenialprophet007/jenkinsfile.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }

        stage('Display Output') {
            steps {
                sh 'cat helloworld.txt'
            }
        }
    }
}
