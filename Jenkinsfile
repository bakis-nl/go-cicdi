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
                   // Build the app.
                 sh 'go build'
             }
        }
    }
 }