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
                sh 'echo "Compiling project..."' // Replace with actual build commands
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'echo "Running tests..."' // Replace with actual test commands
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the app...'
                // Your deployment logic
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
