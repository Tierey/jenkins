node {
    checkout scm
    sh "./devops/init.sh"
    jobDsl targets:["./devops/dsl/*.groovy"].join('\n')
}
