pipeline {
    agent any 

    stages {
        stage('Checkout') {
            steps {
                // ดึงโค้ดล่าสุดจาก GitHub
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    echo 'Building Docker Image...'
                    // สั่ง build image ชื่อ ci-cd-test:latest
                    sh 'printenv | grep -i path'
                    sh 'docker build -t ci-cd-test:latest .'
                    
                }
            }
        }
        stage('Verify') {
            steps {
                echo 'Verifying Image...'
                sh 'docker images | grep ci-cd-test'
            }
        }
    }
}
