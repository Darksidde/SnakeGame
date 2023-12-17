pipeline {
    agent any
    
    stages {
        stage('Build and Run Container') {
            steps {
                script {
                    // Mevcut Docker imajını kullanarak bir konteyner başlatma
                    sh 'docker run --name snake-container -d snake-app'
                }
            }
        }
        stage('Execute Commands Inside Container') {
            steps {
                script {
                    // Docker konteynerı içinde komutları çalıştırma örneği
                    sh 'docker exec snake-container ls -l' // Örnek bir komut
                    sh 'docker exec snake-container python snake_game.py' // Snake oyununu çalıştırabilirsiniz
                }
            }
        }
    }
}
