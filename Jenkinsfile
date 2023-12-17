pipeline {
    agent any
    
    stages {
        stage('Prepare') {
            steps {
                script {
                    // Python ortamını hazırla
                    sh 'python -m venv venv'
                    sh 'source venv/bin/activate'
                    sh 'pip install pygame'
                }
            }
        }
        stage('Test Game') {
            steps {
                script {
                    // Oyunun Python dosyasını çalıştır
                    sh 'python snake_game.py'
                }
            }
        }
    }
}
