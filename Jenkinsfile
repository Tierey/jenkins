pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                sh 'curl -o script.groovy https://raw.githubusercontent.com/Tierey/jenkins_lib/master/script.groovy'
                script {
                    def l = load 'script.groovy'
                    l.hello()
                }
            }
        }
    }
}
