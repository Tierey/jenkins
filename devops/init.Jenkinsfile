node {
    checkout scm
    sh "chmod 777 ./devops/init.sh"
    sh "./devops/init.sh"
    jobDsl targets:["./devops/dsl/*.groovy"].join('\n')
}
