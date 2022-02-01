pipeline {
    agent any

    stages {
         stage('Build') {
             agent {
                 docker {
                     image 'golang'
                 }
             }
             steps {

                 sh 'echo ${GOPATH}'
                 sh 'go mod init'
                 // Build the app.
                 sh 'go build'
             }
        }
    }
 }