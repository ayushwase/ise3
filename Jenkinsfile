pipeline {
    agent any

    stages {
        stage('Build app') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], 
                userRemoteConfigs: [[url:'https://github.com/ayushwase/ise3.git']])
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    bat 'docker build -t jenkinsjavaimage .'
                }
            }
        }
        stage('Change image tag'){
            steps{
                script{
                    bat 'docker tag jenkinsjavaapp ayushwase/javaapp:v1.0'
                }
            }
        }
        stage('Push image to docker hub'){
            steps{
                script{
                   
                    bat 'docker login -u ayushwase -p Ayushs123'
                   
                    bat 'docker push ayushwase/javaapp:v1.0'
                }
            }
        }
    }
}
