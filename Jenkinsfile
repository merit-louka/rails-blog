pipeline {
    agent any
    stages {
        
        stage('Cloning') {
            steps {
              sh 'printenv'
              println env.ghprbSourceBranch
               git branch: env.CHANGE_BRANCH , credentialsId: '86445171-4b56-490b-a1ab-eabc00e4e944', url: 'https://github.com/merit-louka/rails-blog/'
            }  
         }

        stage('Build') {
            steps {
                sh 'echo "Hello World"'
                sh '''
                    echo "Multiline shell steps works too"
                    ls -lah
                '''
            }
        }
        stage('after-Build') {
            steps {
                sh 'echo "yaaaaaaaaaaaay"'
                sh '''
                    echo "Multiline shell steps works too"
                    ls -lah
                '''
            }
        }
    }
}
