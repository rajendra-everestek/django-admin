pipeline{
    agent any
    stages {
        stage('clean_instance'){
            steps  {
                sh '''
                chmod +x clean_instance.sh
                ./clean_instance.sh
                '''
            }
        }
        stage('instance_os_dependencies'){
            steps {
                sh '''
                chmod +x instance_os_dependencies.sh
                ./instance_os_dependencies.sh
                '''
            }
        }
        stage('setup NGINX'){
            steps {
                sh '''
                chmod +x python_dependencies.sh
                ./python_dependencies.sh
                '''
            }
        }
    }
}