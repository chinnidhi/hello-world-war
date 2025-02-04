pipeline{
  agent any
  stages{
    stage('Explain'){
      steps{
        sh 'echo"Hi This job builds and deploys your java project"'
      }
    }
    stage('checkout){
      steps{
        sh 'pwd'
      }
    }
          stage('build'){
            sh 'mvn clean package'
          }
  }
}
