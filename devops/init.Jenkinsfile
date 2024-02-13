node {
    checkout scm
    jobDsl scriptText:"job('a1')"
    jobDsl targets:["./dsl/*.groovy"].join('\n')
}
