pipeline {
    agent any
    tools{
        jdk 'java-11'
        maven 'maven'
    }
    stages{
        stage('git checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/Vasudev-N-H/test-1.git'
            }
        }
        stage('compile'){
            steps{
                sh "mvn compile"
            }
        }
        stage('Build'){
            steps{
                sh "mvn clean install"
            }
        }
        stage('Build and tag Docker file'){
            steps{
                sh "docker build -t Vasudev-N-H/project:1 . "
            }
        }
        stage('Containersation'){
            steps{
                sh 'docker run -it -d --name c1 -p 8001:8000 Vasudev-N-H/project:1'
            }
        }
    }
}
