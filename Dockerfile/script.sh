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

# VOLUME Instruction
docker build -t rizkycahyono/volume volume

docker image inspect rizkycahyono/volume

docker container create --name volume -p 8080:8080 rizkycahyono/volume

docker container start volume

docker container logs volume

docker container inspect volume

docker volume ls

docker container stop volume

# WORKDIR Instruction
docker build -t rizkycahyono/workdir workdir

docker container create --name workdir -p 8080:8080 rizkycahyono/workdir

docker container start workdir

docker container exec -i -t workdir /bin/sh

docker container stop workdir

# USER Instruction
docker build -t rizkycahyono/user user

docker container create --name user -p 8080:8080 rizkycahyono/user

docker container start user

docker container exec -i -t user /bin/sh

docker container stop user

# ARGUMEN Instruction
docker build -t rizkycahyono/arg arg --build-arg app=pzn

docker container create --name arg -p 8080:8080 rizkycahyono/arg

docker container start arg

docker container exec -i -t arg /bin/sh

docker container stop arg

# HEALTHCHECK Instruction
docker build -t rizkycahyono/health health

docker container create --name health -p 8080:8080 rizkycahyono/health

docker container start health

docker container ls

docker container inspect health

docker container stop health

# ENTRYPOINT Instruction
docker build -t rizkycahyono/entrypoint entrypoint

docker image inspect rizkycahyono/entrypoint

docker container create --name entrypoint -p 8080:8080 rizkycahyono/entrypoint

docker container start entrypoint

docker container stop entrypoint

# MULTI STAGE Instruction
docker build -t rizkycahyono/multi multi

docker image ls

docker container create --name multi -p 8080:8080 rizkycahyono/multi

docker container start multi

docker container stop multi