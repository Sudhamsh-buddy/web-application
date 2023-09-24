pipeline {
    agent any
    tools {
        // Use double quotes for the tool name
        maven "maven"
    }
    stages {
        // stage('Checkout') { // Define a stage name
        //     steps {
        //         // Use single quotes for the SCM step
        //         git 'https://github.com/sudhamshapp/web-application.git'
        //     }
        // }
        stage('Build') { // Define another stage name
            steps {
                sh 'mvn clean package'
            }
        }
        // stage('deploy'){
        //     steps{
        //         deploy adapters: [tomcat9(credentialsId: 'tomcat-credentials', path: '', url: 'http://35.166.243.252:8080/')], contextPath: null, war: '**/*.war'
        //     }
        // }
    }
}
