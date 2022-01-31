pipeline {
    agent any
    environment {
        registry = "bakisnl/go-cicd"
        GOCACHE = "/tmp"
        GOPATH = "${WORKSPACE}/go-cicd"
    }
    stages {
         stage('Build') {
             agent {
                 docker {
                     image 'golang'
                 }
             }
             steps {
                   // Build the app.
                 sh 'go build'
             }
        }
    }
 }