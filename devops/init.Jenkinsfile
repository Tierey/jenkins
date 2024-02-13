node {
    checkout scm
    jobDsl scriptText:"job('a1')"
    jobDsl targets:["./devops/dsl/*.groovy"].join('\n')
}
