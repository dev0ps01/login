pipeline {
    agent any
    stages {

         stage('go build') {
             steps {
                 sh '''
                 go build
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
