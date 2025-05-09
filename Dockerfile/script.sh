# FROM Instruction
docker build -t rizkycahyono/from from 

# RUN Instruction
docker build -t rizkycahyono/run run

docker build -t rizkycahyono/run run --progress=plain --no-cache # lebih detail untuk informasi

# COMMAND Instruction
docker build -t rizkycahyono/command command

docker image inspect rizkycahyono/command command

docker container create --name command rizkycahyono/command

docker container start command

docker container logs command

# LABEL Instruction
docker build -t rizkycahyono/label label

docker image inspect rizkycahyono/label label

# ADD Instruction
docker build -t rizkycahyono/add add

docker container create --name add rizkycahyono/add

docker container start add

docker container logs add

# COPY Instruction
docker build -t rizkycahyono/copy copy

docker container create --name copy rizkycahyono/copy

docker container start copy

docker container logs copy

# IGNORE Instruction
docker build -t rizkycahyono/ignore ignore

docker container create --name ignore rizkycahyono/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t rizkycahyono/expose expose

docker image inspect rizkycahyono/expose

docker container create --name expose -p 8080:8080 rizkycahyono/expose

docker container start expose

docker container ps expose

docker container stop expose

# ENV Instruction
docker build -t rizkycahyono/env env

docker image inspect rizkycahyono/env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 rizkycahyono/env # menggunakan port yang kita kasih sendiri

docker container start env

docker container logs env

docker container stop env