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
          def imageName = "my-node-app"
          def ecrRepoURL = "YOUR_ECR_REPOSITORY_URL"

          sh "docker build -t $imageName ."
          sh "docker tag $imageName $ecrRepoURL:$imageName"
          sh "docker push $ecrRepoURL:$imageName"
        }
      }
    }
  }
}
