pipeline {
    agent any
    environment {
        registry = "bakisnl/go-cicd"
        GOCACHE = "/tmp"
        GOPATH = "${WORKSPACE}"
    }
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