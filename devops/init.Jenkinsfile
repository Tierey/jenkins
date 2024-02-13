node {
    checkout scm
    sh "sudo chmod 777 ./devops/init.sh"
    sh "./devops/init.sh"
    jobDsl targets:["./devops/dsl/*.groovy"].join('\n')
}
