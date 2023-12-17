pipeline {
    agent any
    
    stages {
        stage('Build and Run Container') {
            steps {
                script {
                    // Docker içinde snake-app imajından bir snake-container'ı çalıştırma
                    docker.image('snake-app').run('--name snake-container -d')
                }
            }
        }
        stage('Execute Commands Inside Container') {
            steps {
                script {
                    // Docker konteynerı içinde komutları çalıştırma örneği
                    docker.inside("--workdir /app snake-container") {
                        sh 'ls -l' // Örnek bir komut
                        sh 'python snake_game.py' // Snake oyununu çalıştırabilirsiniz
                    }
                }
            }
        }
    }
}
