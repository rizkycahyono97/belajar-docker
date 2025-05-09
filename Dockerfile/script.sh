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
