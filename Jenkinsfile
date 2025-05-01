pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Source already checked out by Jenkins'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
                sh './build.sh' // or sh 'mvn clean install'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh './test.sh' // or sh 'mvn test'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the app...'
                // Add deployment logic
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
