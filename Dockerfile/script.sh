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