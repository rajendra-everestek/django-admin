pipeline{
    agent any
    stages {
    
        stage('Setup Python Virtual ENV'){
            steps  {
                sh '''
                chmod +x envsetup.sh
                sh ./scripts/envsetup.sh
                '''
            }
        }
        stage('Setup Gunicorn Setup'){
            steps {
                sh '''
                chmod +x gunicorn.sh
                sh ./scripts/gunicorn.sh
                '''
            }
        }
        stage('setup NGINX'){
            steps {
                sh '''
                chmod +x nginx.sh
                sh ./scripts/nginx.sh
                '''
            }
        }
    }
}