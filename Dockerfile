# Resmi Python imajını kullanın
FROM python:latest

# Uygulama için çalışma dizinini belirleyin (istediğiniz bir dizini seçebilirsiniz)
WORKDIR /app

# Host makineden Docker imajına kopyalayacağınız dosyaları ekleme
COPY . /app

# Gerekli Python bağımlılıklarını yükleyin (örneğin requirements.txt varsa)
# COPY requirements.txt /app/requirements.txt
# RUN pip install -r requirements.txt

# Uygulamanız için gerekli komutları burada çalıştırabilirsiniz
# Örneğin bir Python dosyasını çalıştırma komutu:
# CMD ["python", "snake_game.py"]
