pipeline {
    agent any
    stages {
         stage('compile code') {
             steps {
                  sh '''
                    mvn compile
                  '''
             }
         }
         stage('make package') {
             steps {
                 sh '''

                     mvn package
                 '''
             }
         }
         stage ('Prepare Artifacts') {
           steps {
               sh '''
                  zip -r login.zip *
               '''
           }
         }
       stage('Upload Artifacts') {
          steps {
              sh '''

                 curl -f -v -u admin:vamsi --upload-file login.zip http://172.31.9.137:8081/repository/users/login.zip
              '''
          }
       }
    }
}
