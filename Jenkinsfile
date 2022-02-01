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

                 sh 'export GOPATH = ${WORKSPACE}'
                 sh 'export GO111MODULE=off'
                 sh 'go env'
                 sh 'go mod init'
                 // Build the app.
                 sh 'go build'
             }
        }
    }
 }