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


        stage ('Sonarqube Analysis') {
            steps {
                withMaven(maven : 'maven_3.8.1') {
                    sh 'mvn clean install package sonar:sonar'
                }
            }
        }
    }
}
