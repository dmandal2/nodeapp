pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Build and Publish Image') {
      steps {
        script {
          def imageName = "my-node-app:${env.BUILD_NUMBER}"
          def ecrRepoURL = "235319409305.dkr.ecr.us-east-1.amazonaws.com/app-ecr"

          sh "docker build -t $imageName ."
          sh "docker tag $imageName $ecrRepoURL:$imageName"
          sh "docker push $ecrRepoURL:$imageName"
        }
      }
    }
  }
}
