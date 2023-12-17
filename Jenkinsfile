pipeline {
    agent any
    
    stages {
        stage('Build and Run Container') {
            steps {
                script {
                    // Docker içinde snake-container'ı çalıştırma
                    docker.image('snake-container').run('--name my-snake-container -d')
                }
            }
        }
        stage('Execute Commands Inside Container') {
            steps {
                script {
                    // Docker konteynerı içinde komutları çalıştırma örneği
                    docker.inside("--workdir /app my-snake-container") {
                        sh 'ls -l' // Örnek bir komut
                        sh 'python snake_game.py' // Snake oyununu çalıştırabilirsiniz
                    }
                }
            }
        }
    }
}
