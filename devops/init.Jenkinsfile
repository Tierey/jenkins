node {
    //sh "cp -R ../../dsl-jobs ./jobs"
    sh "ls -la"
    sh "ls -la .."
    sh "ls -la ../.."
    jobDsl targets:["./devops/dsl/*.groovy"].join('\n')
}
