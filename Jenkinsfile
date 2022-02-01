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
                 sh 'export GO111MODULE=off'
                 sh 'go env'
                 sh 'go mod init'
                 // Build the app.
                 sh 'go build'
             }
        }
    }
 }