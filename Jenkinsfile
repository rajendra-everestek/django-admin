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
        stage('Python Dependencies'){
            steps  {
                sh '''
                chmod +x ./scripts/python_dependencies.sh
                ./scripts/python_dependencies.sh
                '''
            }
        }
    }
}
