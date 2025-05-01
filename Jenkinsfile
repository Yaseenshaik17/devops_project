pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Yaseenshaik17/devops_project.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
                sh './build.sh' // or use: sh 'mvn clean install'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh './test.sh' // or use: sh 'mvn test'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the app...'
                // Add your deployment logic here (e.g., SSH, kubectl, etc.)
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
