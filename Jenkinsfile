pipeline {
    agent any
    
    stages {
        stage('Test') {
            steps {
                script {
                    sh 'pip install -r requirements.txt' // Gerekli kütüphaneleri yükleyin
                    sh 'python -m unittest test_game.py' // Test senaryosunu çalıştırın
                }
            }
        }
    }
}
