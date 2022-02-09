# Instruções criadas para criar a imagem em Docker
FROM node:13.12.0-alpine 

# Instruções do diretório a se tornar container
WORKDIR /usr/src/app

# Vai copiar normalmente o Package.json para o diretório
COPY package*.json ./
RUN npm install

# Copia todos os arquivos acima do diretório WORKDIR
COPY . .

# Libera a porta para rodar o APP
EXPOSE 3000

# Comando setado para rodar a aplicação
CMD ["npm" "start"]

#### Comandos Básicos ####
## 'docker build -t docker-frontend .' ## -> comando a ser utilizado para criar a imagem 
## 'docker images' or 'docker ps' ## -> lista todas as imagens criadas / todos os containers
## 'docker rmi 98182 ' -> remove a imagem selecionada pelo ID
## 'docker stop 98182' or 'docker kill 98182' -> para a execução de um container
## 'docker run -p 3000:3000 docker-frontend' ## -> indica a porta para rodar em sua máquina

### Interface Alternativa ###
## 'Stevedore: Docker Controller' é um applet criado pro Linux Mint que realiza comandos por meio de uma interface (tray icon) na barra de tarefas
