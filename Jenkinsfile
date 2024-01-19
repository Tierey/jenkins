pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                sh 'cat index.html'
                script {
                    def l = load 'script.groovy'
                    l.hello()
                }
            }
        }
    }
}
