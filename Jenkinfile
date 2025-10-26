pipeline {
    agent any

    stages {

        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/imrohit007/React-Native-Expo-News-App.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t newsapp-expo .'
            }
        }

        stage('Run Docker Compose') {
            steps {
                bat 'docker compose up -d --build'
            }
        }
    }

    post {
        success {
            echo '✅ Build & Deployment SUCCESS!'
        }
        failure {
            echo '❌ Build FAILED!'
        }
    }
}
