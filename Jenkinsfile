pipeline {
    agent {
        node {
            label 'Maven'
        }
    }

    stages {
        stage('Clone_code') {
            steps {
                git branch: 'main', url: 'https://github.com/rajeshprakashtalla/tweet-trend-proj2udemy.git'
            }
        }
    }
}
