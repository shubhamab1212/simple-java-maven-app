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


        
stage('build && SonarQube analysis') {



steps {



withSonarQubeEnv('Sonarqube') {







withMaven(maven:'maven_3.8.1')
 {



sh 'mvn clean package sonar:sonar'



                     }
                }
            }
        }
    }
}
