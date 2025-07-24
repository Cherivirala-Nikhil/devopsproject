pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/Cherivirala-Nikhil/devopsproject.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("devopsproject-image")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker rm -f devopsproject-container || true'
                    sh 'docker run -d -p 8087:80 --name devopsproject-container devopsproject-image'
                }
            }
        }
    }
}
