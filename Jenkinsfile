pipeline{
    agent any
    stages {
        stage('Setup Python Virtual ENV'){
            steps  {
                sh '''
                chmod +x clean_instance.sh
                scripts/clean_instance.sh
                '''
            }
        }
        stage('Setup Gunicorn Setup'){
            steps {
                sh '''
                chmod +x gunicorn.sh
                ./gunicorn.sh
                '''
            }
        }
        stage('setup NGINX'){
            steps {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                '''
            }
        }
    }
}