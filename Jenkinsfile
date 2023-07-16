pipeline {
    agent any
    tools{
        maven 'maven3'
    }
  options {
  buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '3', numToKeepStr: '3')
  timestamps()
}


    stages {
        stage('clone the repo') {
            steps {
                git 'https://github.com/Sudhamsh-buddy/web-application.git'
            }
        }
        
        stage('Build the code using maven') {
            steps {
                sh 'mvn install'
            
                
            }
        }
        stage('Deploy onto tomcat') {
            steps {
                deploy adapters: [tomcat7(credentialsId: 'tomcat-username-password', path: '', url: 'http://35.166.20.13:8080/')], contextPath: null, war: '**/*.war'
            
                
            }
        }
        
        
        
    }
}
