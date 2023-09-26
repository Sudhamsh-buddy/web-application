// pipeline {
//     agent any
//     tools {
//         // Use double quotes for the tool name
//         maven "maven"
//     }
//     stages {
//         // stage('Checkout') { // Define a stage name
//         //     steps {
//         //         // Use single quotes for the SCM step
//         //         git 'https://github.com/sudhamshapp/web-application.git'
//         //     }
//         // }
//         stage('Build') { // Define another stage name
//             steps {
//                 sh 'mvn clean package'
//             }
//         }
//         // stage('deploy'){
//         //     steps{
//         //         deploy adapters: [tomcat9(credentialsId: 'tomcat-credentials', path: '', url: 'http://35.166.243.252:8080/')], contextPath: null, war: '**/*.war'
//         //     }
//         // }
//     }
// }

pipeline {
    agent any
    tools {
        maven "maven"
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/sudhamshapp/web-application.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    sh 'docker build -t sudhamshapp/webapp .'
                    sh 'docker login -u sudhamshapp -p Buddy$1996'
                    sh 'docker push sudhamshapp/webapp'


                    }
                }
            }
        }
        // Add a stage for deploying the Docker container if necessary
        // stage('Deploy') {
        //     steps {
        //         // Use 'dockerImage' as the image name to deploy
        //         sh 'docker run -d -p 8080:8080 sudhamshapp/yourapp:latest'
        //     }
        // }
    }
}

// added couple of lines in jenkinsfile