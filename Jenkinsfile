pipeline {
    agent {
        node {
            label 'Maven'
        }
    }

environment {
    PATH="/u01/maven/apache-maven-3.9.6/bin:$PATH"

}

    stages {
        stage ("build" {
            steps {
                sh 'mvn clean deploy'
            }
        })
    }
}
