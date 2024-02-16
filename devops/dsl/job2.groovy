#!groovy
pipelineJob('pipelineJob-dsl') {
  parameters {
      booleanParam('FLAG', true)
      choiceParam('OPTION', ['option 1 (default)', 'option 2', 'option 3'])
  }

  definition {
      cpsScm {
          scm {
              
              git{
                remote{
                  url('https://github.com/Tierey/jenkins.git')
                }
                branch('master')
              }
          }
      }
  }
}
