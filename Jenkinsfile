pipeline{
    agent any
    stages {
        // stage('Clean instance'){
        //     steps  {
        //         sh '''
        //         chmod +x clean_instance.sh
        //         ./clean_instance.sh
        //         '''
        //     }
        // }

        stage('Instance os Dependencies'){
            steps  {
                sh '''
                chmod +x instance_os_dependencies.sh
                ./instance_os_dependencies.sh
                '''
            }
        }

        stage('Python Dependencies'){
            steps  {
                sh '''
                chmod +x python_dependencies.sh
                ./python_dependencies.sh
                '''
            }
        }

        stage('Setup Gunicorn Setup'){
            steps  {
                sh '''
                chmod +x gunicorn.sh
                ./gunicorn.sh
                '''
            }
        }

        stage('setup NGINX'){
            steps  {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                '''
            }
        }

        stage('Stop Application'){
            steps  {
                sh '''
                chmod +x stop_app.sh
                ./stop_app.sh
                '''
            }
        }

        stage('Start Application'){
            steps  {
                sh '''
                chmod +x start_app.sh
                ./start_app.sh
                '''
            }
        }
        
        // stage('Setup Gunicorn Setup'){
        //     steps {
        //         sh '''
        //         chmod +x gunicorn.sh
        //         ./gunicorn.sh
        //         '''
        //     }
        // }
        // stage('setup NGINX'){
        //     steps {
        //         sh '''
        //         chmod +x nginx.sh
        //         ./nginx.sh
        //         '''
        //     }
        // }
    }
}