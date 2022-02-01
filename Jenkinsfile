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
                 sh 'git clone https://github.com/bakis-nl/go-cicd.git'
                 sh 'go env'
                 sh 'go mod init'
                 // Build the app.
                 sh 'go build'
             }
        }
    }
 }