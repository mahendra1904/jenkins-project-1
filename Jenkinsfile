pipeline {
    agent any
	
	tools
    {
       maven "Maven"
    }
 stages {
      stage('checkout') {
           steps {
             
                git branch: 'master', url: 'https://github.com/mahendra1904/project-1.git'
             
          }
        }
	 stage('LocalMaven') {
           steps {
             
                sh 'mvn package'             
          }
        }
        

  stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t webapp1:latest .' 
                sh 'docker tag samplewebapp mahendra1904/samplewebapp:latest'
               
          }
        }
     
  stage('Publish image to Docker Hub') {
          
            steps {
        withDockerRegistry([ credentialsId: "dockerHub", url: "" ]) {
          sh  'docker push mahendra1904/samplewebapp:latest'

        }
                  
          }
        }
     
      stage('Run Docker container on Jenkins Agent') {
             
            steps 
			{
                sh "docker run -d -p 9092:8080 mahendra1904/samplewebapp"
 
            }
        }
    }
}
    
