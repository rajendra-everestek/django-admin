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
        stage('Setup Python Virtual ENV'){
            steps  {
                sh '''
                chmod +x ./scripts/instance_os_dependencies.sh
                sh ./scripts/instance_os_dependencies.sh
                '''
            }
        }
        // stage('Setup Gunicorn Setup'){
        //     steps {
        //         sh '''
        //         chmod +x ./scripts/gunicorn.sh
        //         ./scripts/gunicorn.sh
        //         '''
        //     }
        // }
        // stage('setup NGINX'){
        //     steps {
        //         sh '''
        //         chmod +x ./scripts/nginx.sh
        //         ./scripts/nginx.sh
        //         '''
        //     }
        // }
    }
}
