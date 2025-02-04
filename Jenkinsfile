pipeline{
  agent none
  environment {
        ARTIFACTORY_CREDENTIALS = credentials('JFROG_PASSWORD')
    }
  stages{
    stage('Heading'){
      steps{
      echo 'This job will automate the CICD'
      }
    }
    stage('checkout'){
      agent {label 'build'}
      steps{
        sh 'pwd'
        sh 'mvn --version'
      }
    }
    stage('build'){
      agent {label 'build'}
        steps{
        sh 'mvn clean package'
      }
    }
    stage('publish')
    {
      agent { label 'build'}
    steps{
      sh 'mkdir -p ~/.m2'
      sh '''
          echo "<settings>
                  <servers>
                      <server>
                        <id>hello-world-war</id>
                        <username>$ARTIFACTORY_CREDENTIALS_USR</username>
                        <password>$ARTIFACTORY_CREDENTIALS_PSW</password>
                      </server>
                      </servers>
                </settings>" > ~/.m2/settings.xml 
                '''
          sh 'mvn clean deploy'
        }
    }
    stage('deploy'){
    agent { label 'build' }
    steps{
      sh 'curl -L -u "${ARTIFACTORY_CREDENTIALS_USR}:${ARTIFACTORY_CREDENTIALS_PSW}" -O "http://52.66.9.98:8082/artifactory/hello-world-war-libs-release/com/efsavage/hello-world-war/${BUILD_NUMBER}/hello-world-war-${BUILD_NUMBER}.war"'
      sh 'sudo cp hello-world-war-${BUILD_NUMBER}.war /opt/tomcat/apache-tomcat-10.1.34/webapps/'
     sh 'sudo bash /opt/tomcat/apache-tomcat-10.1.34/bin/shutdown.sh'
     sh 'sudo bash /opt/tomcat/apache-tomcat-10.1.34/bin/startup.sh'
    }
  }
}
  post{
    failure{
      echo 'The build has failed'
    }
  }
}
