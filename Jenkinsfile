pipeline {
    agent any

    stages {
        stage ('Compile Stage') {

            steps {
                withMaven(maven : 'maven_3.8.1') {
                    sh 'mvn clean compile'
                }
            }
        }

        stage ('Testing Stage') {

            steps {
                withMaven(maven : 'maven_3.8.1') {
                    sh 'mvn test'
                }
            }
        }
        
        stage('checkout SCM') {

            steps {
                git 'https://github.com/shubhamab1212/simple-java-maven-app.git'

            }
        }

        
        stage('build && SonarQube analysis') {
            
            steps {
                withSonarQubeEnv('Sonarqube') {
                    withMaven(maven:'maven_3.8.1'){
                        sh 'mvn clean package sonar:sonar'
                }
            }
        }
    }

    }
}
