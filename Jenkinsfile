pipeline {
    agent any

    tools {
        maven "M2_HOME"
    }

    environment {
        DOCKER_USER ='notsohealthy'
        DOCKER_PASS = credentials('notsohealthy')
    }

    stages {
        stage("Code Checkout") {
            steps {
                git branch: 'main',
                    url: 'https://github.com/NotSoHealthy/ben_hamouda_mohamed_amin_4SAE9.git'
            }
        }

        stage('Code Test') {
            steps {
                sh "mvn test"
            }
        }

        stage('Code Build') {
            steps {
                sh "mvn package"
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    sh "docker build -t notsohealthy/student-management:1.0 ."
                }
            }
        }

        stage('Docker Push') {
            steps {
                script {
                    sh "echo ${DOCKER_PASS} | docker login -u ${DOCKER_USER} --password-stdin"
                    sh "docker ps -a"
                    sh "docker push notsohealthy/student-management:1.0"
                }
            }
        }
    }

    post {
        always {
            echo "Pipeline finished!"
        }
    }
}
