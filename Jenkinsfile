pipeline {
  agent any

  options {
    timeout(time: 2, unit: 'MINUTES')
  }

  environment {
    REGISTRY_URL = "127.0.0.1:5000/tiburones/testapp"
  }
  stages {
    stage('Building image') {
     steps{
          sh '''
          docker build -t testapp .
             '''  
           }
    }
    stage('Run tests') {
      steps {
        sh "docker run testapp npm test"
      }
    }
    stage('Deploy Image') {
      steps{
        sh '''
        docker login 127.0.0.1:5000 -u admin -p admin
        docker tag testapp ${REGISTRY_URL}
        docker push ${REGISTRY_URL}   
        '''
        }
    }
    stage('Vulnerability Scan - Docker ') {
      steps {
        sh "docker run  -v /var/run/docker.sock:/var/run/docker.sock aquasec/trivy image --severity=CRITICAL ${REGISTRY_URL}"
      }
    }
  }
}


    
  

