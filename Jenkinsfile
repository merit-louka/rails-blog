pipeline {
    agent any
    
        stages {
            
            stage('Cloning') {
                steps {
                  sh 'printenv'
                  println env.ghprbSourceBranch
                   git branch: env.GITHUB_PR_SOURCE_BRANCH , credentialsId: '86445171-4b56-490b-a1ab-eabc00e4e944', url: 'https://github.com/merit-louka/rails-blog/'
                
                    setBuildStatus("Build complete", "SUCCESS");
                }  
             }
    
            stage('Build') {
                steps {
                    sh 'echo "Hello World"'
                    sh '''
                        echo "Multiline shell steps works too"
                        ls -lah
                    '''
                    setBuildStatus("Build complete", "SUCCESS");
                }
            }
            stage('after-Build') {
                steps {
                    sh 'echo "yaaaaaaaaaaaay"'
                    sh '''
                        echo "Multiline shell steps works too"
                        ls -lah
                    '''
                setBuildStatus("Build complete", "SUCCESS");
                    
                } 
            }
            stage('notify') {
                steps {
                    setBuildStatus("Build complete", "SUCCESS");
                }
            }
            
        }
        
       post{
           always{
            setBuildStatus("Build complete", "SUCCESS");
           }
        }
}   

void setBuildStatus(String message, String state) {
  step([
      $class: "GitHubCommitStatusSetter",
      reposSource: [$class: "ManuallyEnteredRepositorySource", url: "https://github.com/merit-louka/rails-blog"],
      contextSource: [$class: "ManuallyEnteredCommitContextSource", context: "ci/jenkins/build-status"],
      errorHandlers: [[$class: "ChangingBuildStatusErrorHandler", result: "UNSTABLE"]],
      statusResultSource: [ $class: "ConditionalStatusResultSource", results: [[$class: "AnyBuildResult", message: message, state: state]] ]
  ]);
}