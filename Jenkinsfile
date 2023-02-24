pipeline{
    agent any
    stages {
        stage('Clean Instance'){
            steps  {
                sh '''
                chmod +x ./scripts/clean_instance.sh
                ./scripts/clean_instance.sh
                '''
            }
        }
        stage('Instance OS Dependencies'){
            steps  {
                sh '''
                chmod +x ./scripts/instance_os_dependencies.sh
                ./scripts/instance_os_dependencies.sh
                '''
            }
        }
        stage('Python Dependencies'){
            steps  {
                sh '''
                chmod +x ./scripts/python_dependencies.sh
                ./scripts/python_dependencies.sh
                '''
            }
        }
        stage('Gunicorn'){
            steps  {
                sh '''
                chmod +x ./scripts/gunicorn.sh
                ./scripts/gunicorn.sh
                '''
            }
        }
        stage('Nginx'){
            steps  {
                sh '''
                chmod +x ./scripts/nginx.sh
                ./scripts/nginx.sh
                '''
            }
        }
        stage('Stop App'){
            steps  {
                sh '''
                chmod +x ./scripts/stop_app.sh
                ./scripts/stop_app.sh
                '''
            }
        }
        stage('Start App'){
            steps  {
                sh '''
                chmod +x ./scripts/start_app.sh
                ./scripts/start_app.sh
                '''
            }
        }
    }
}
