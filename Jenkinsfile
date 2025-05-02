pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Yaseenshaik17/devops_project.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
                
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed'
        }
        failure {
            echo 'Pipeline failed'
        }
    }
}
