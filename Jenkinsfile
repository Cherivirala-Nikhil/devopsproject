pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/your-username/devopsproject.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("devopsproject")
                }
            }
        }

        stage('Stop Old Container') {
            steps {
                sh '''
                    docker stop devopsproject || true
                    docker rm devopsproject || true
                '''
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d --name devopsproject -p 8087:80 devopsproject'
            }
        }
    }
}
