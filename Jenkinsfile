pipeline {
    agent {
        node {
            label 'maven'
        }
    }

environment {
    PATH="/trend_multibranch/bin:$PATH"

}

    stages {
        stage ("build") {
            steps {
                sh 'mvn clean deploy'
            }
        }
    }
}
