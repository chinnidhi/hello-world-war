pipeline{
  agent any
  stages{
    stage('checkout'){
      steps{
        sh 'pwd'
      }
    }
          stage('build'){
            steps{
            sh 'mvn clean package'
          }
        }
  }
}
