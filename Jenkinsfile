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
                 // Create our project directory.
                 sh 'cd ${GOPATH}/src'
                 sh 'mkdir -p ${GOPATH}/src/bakisgo'
                 // Copy all files in our Jenkins workspace to our project directory.
                 sh 'cp -r ${WORKSPACE}/* ${GOPATH}/src/bakisgo'
                 // Build the app.
                 sh 'go build'
             }
        }
    }
 }