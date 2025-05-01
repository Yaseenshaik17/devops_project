pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'yaseenshaik17/devops_project' // Your Docker Hub image name
        DOCKER_CREDENTIALS_ID = 'dockerhub-credentials-id'  // Replace with your Docker Hub credentials ID in Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Source already checked out by Jenkins'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
                sh 'echo "Compiling project..."' // Replace with actual build commands, e.g., mvn or npm
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'echo "Running tests..."' // Replace with actual test commands
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                sh "docker build -t $DOCKER_IMAGE:${BUILD_NUMBER} ." // Build Docker image with tag based on Jenkins build number
            }
        }

        stage('Docker Push') {
            steps {
                withCredentials([usernamePassword(credentialsId: "$DOCKER_CREDENTIALS_ID", usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    echo 'Pushing Docker image to Docker Hub...'
                    sh "echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin"
                    sh "docker push $DOCKER_IMAGE:${BUILD_NUMBER}"  // Push Docker image to Docker Hub
                }
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the app...'
                // Your deployment logic, e.g., kubectl, SSH commands, etc.
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
