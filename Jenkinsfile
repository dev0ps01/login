pipeline {

  agent any

    stages {

      stage ('prepare artifact') {
        steps {

           sh '''

               zip -r  ../login.zip * login-ci main.go user.go tracing.go
           '''
        }
      }
      stage ('upload artifact') {
        steps {
          sh '''
           curl -f -v -u admin:vamsi --upload-file login.zip http://172.31.9.137:8081/repository/login1/login.zip

          '''
        }
      }
    }
 }
