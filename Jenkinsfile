pipeline {
    agent { label "master"}

    stages {
        stage('Delete the workspace') {
            steps {
                sh "sudo rm -rf $WORKSPACE/*"
            }
        }

        stage('Loading Hardening Cookbook') {
            steps {
                git credentialsId: 'repo_key', url: 'git@github.com:jasonnalewak/cis-rhel.git'
            }
        }

        stage('Local Testing') {
            steps {
                script {
                    sh 'cookstyle .'
                    sh 'foodcritic . --tags ~FC005,~FC022,~FC070,~FC078,~FC004,~FC048'
                }
            }
        }

        stage('Test Kitchen') {
            steps {
                script {
                    sh 'export CHEF_LICENSE="accept-no-persist"'
                    sh 'sudo kitchen test '
                }
            }
        }

        stage('Upload Cookbook to S3') {
            steps {
                script {
                    sh 'echo "needs implemented" '
                }
            }
        }

        stage('Create AMI') {
            steps {
                script {
                    sh 'echo "needs implemented" '
                }
            }
        }

        stage('Validate AMI') {
            steps {
                script {
                    sh 'echo "needs implemented" '
                }
            }
        }

        stage('Send Slack Notification') {
            steps{
                slackSend color: '#449FE0', message: "Jason Nalewak: Please approve ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.JOB_URL}|Open>)"
            }
            
        } 
    }

    //post actions
    post {
        success {
        slackSend color: '#439FE0', message: "Build $JOB_NAME $BUILD_NUMBER was successful"
        }
        failure {
            echo "Build Failed"
            slackSend color: 'bad', message: "Build $JOB_NAME $BUILD_NUMBER failed"
        }
    }

}