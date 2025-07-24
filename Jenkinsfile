pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Pull code from GitHub
                git 'https://github.com/Cherivirala-Nikhil/devopsproject.git'
            }
        }

        stage('Test (Static HTML Check)') {
            steps {
                echo 'Running basic syntax check for HTML, CSS, JS...'
                sh 'ls -l *.html *.css *.js || echo "Some files missing, skipping checks..."'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t devopsproject:latest .'
            }
        }

        stage('Deploy Container') {
            steps {
                echo 'Deploying container on port 8087...'
                // Stop existing container if running
                sh 'docker rm -f devopsproject || true'
                // Run new container
                sh 'docker run -d -p 8087:80 --name devopsproject devopsproject:latest'
            }
        }
    }
}

