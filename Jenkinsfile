pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo '✅ Building from main folder...'
                bat 'dir'   // lists all files in current directory
            }
        }

        stage('Test') {
            steps {
                echo '🧪 Testing files in main folder...'

                // Check if index.html exists
                bat '''
                if exist index.html (
                    echo index.html exists ✅
                ) else (
                    echo index.html is MISSING ❌
                    exit /b 1
                )
                '''

                // Dummy test: check if style.css contains "body"
                bat '''
                findstr "body" style.css >nul
                if %errorlevel% equ 0 (
                    echo CSS contains "body" ✅
                ) else (
                    echo CSS body tag not found ❌
                    exit /b 1
                )
                '''
            }
        }

        stage('Print Commit Message') {
            steps {
                echo '📝 Printing Git commit message (if repo was cloned properly)'
                bat 'git log -1 --pretty=oneline'
            }
        }
    }
}
