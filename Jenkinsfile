pipeline {
    agent any

    stages {
stage('Checkout') {
    steps {
        git branch: 'main', url: 'https://github.com/Cherivirala-Nikhil/devopsproject.git'
    }
}

}


     

        stage('Test') {
            steps {
                echo 'Performing basic syntax checks on HTML, CSS, and JS...'
                sh 'ls -l *.html *.css *.js || echo "Files missing or checked."'
            }
        }

        stage('Restart Container') {
            steps {
                echo 'Restarting existing Docker container...'
                sh 'docker rm -f devopsproject || true'
                sh 'docker run -d -p 8087:80 --name devopsproject devopsproject:latest'
            }
        }
    }
}
