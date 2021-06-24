pipeline {

  agent any

    stages {
      stage (' download dependices') {
        sh '''

        '''
      }
      stage ('prepare artifact') {
        steps {

           sh '''
              zip -r  ../login.zip *
           '''
        }
      }
      stage ('upload artifact') {
        steps {
          sh '''
           curl -f -v -u admin:vamsi --upload-file frontend.zip http://172.31.9.137:8081/repository/frontend1/frontend.zip

          '''
        }
      }
    }
 }
