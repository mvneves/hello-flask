# Utiliza uma imagem oficial do Python como base
FROM python:3.7-slim

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos do diretório atual para o contêiner
COPY ./app.py ./requirements.txt /app/

# Instala as dependências necessárias
RUN pip install -r requirements.txt

# Define a variável de ambiente FLASK_APP
ENV FLASK_APP=app.py

# Expõe a porta 5000 para ser acessada externamente
EXPOSE 5000

# Comando para iniciar a aplicação
CMD ["flask", "run", "--host=0.0.0.0"]
