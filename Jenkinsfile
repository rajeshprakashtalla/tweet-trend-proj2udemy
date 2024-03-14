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
             echo " ------- build has started -------"
                sh 'mvn clean deploy -Dmaven.test.skip=true'
             echo " ------- build has completed -------"
            }
        }
        stage ("test"){
           steps {
            echo " ------- unit test started -------"
            sh 'mvn surefire-report:report'
             echo " ------- unit test completed -------"
           }
        }
        stage ("SonarQube analysis") {
            environment {
                scannerHome = tool 'valaxy-sonar-scanner'
            
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
        
    } 
}


    
