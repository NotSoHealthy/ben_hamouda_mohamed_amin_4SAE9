pipeline {
    agent any
    tools {
        maven "M2_HOME"
    }

    stages {
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
    }
}
