pipeline {
    agent {
        node {
            label 'maven'
        }
    }

environment {
    PATH="/opt/apache-maven-3.9.6/bin:$PATH"

}

    stages {
        stage ("build") {
            steps {
                sh 'mvn clean deploy'
            }
        }
        stage ("SonarQube analysis") {
            environment {
                scannerHome = tool 'valaxy-sonar-scanner'
                PATH="/usr/bin:$PATH"
            }
            steps {
                withSonarQubeEnv('valaxy-sonarqube-server') {
                    // Optionally use a Maven environment you've configured already
                    //withMaven(maven:'Maven 3.5') {
                     //  sh 'mvn clean package sonar:sonar'
                    //}
                    sh "${scannerHome}/bin/sonar-scanner"
                }
            }
        }
        stage("Quality Gate") {
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    // Parameter indicates whether to set pipeline to UNSTABLE if Quality Gate fails
                    // true = set pipeline to UNSTABLE, false = don't
                    waitForQualityGate abortPipeline: true
                }
            }
        }
    } 
}


    
