Feel free to apend this readme inplace  & without PR (append only).

# Install Docker on windows:
- Install Oracle Virtual Box: https://www.virtualbox.org/
- Download Docker Toolbox: https://www.docker.com/products/docker-toolbox
- Follow insaller instructions, Important: Install everything, don`t forget Kitematic!
- In a terminal (cmd/powershell/MinGw etc) run ```docker-machine create --driver virtualbox default```

# Install Docker on linux:
```curl -sSL https://get.docker.com/ | sh
curl -L https://github.com/docker/compose/releases/download/1.9.0/docker-compose-'uname -s'-'uname -m' > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose```                                                 

# Run Docker on linux:
- ```docker-machine start default```
- ```docker-machine env```
- ```docker-compose up```

# Run Docker on windows:
- Open Virtual Box, make sure there is a entry default and this is turned of.
  - If it is not, then turn it of: right click->shutdown->shutdown
  - If it says canceled you need to turn it first on, and then of.
- In a terminal (cmd/powershell/MinGw etc) run:
  - ```docker-machine start default```
  - ```docker-machine env```
  - On dos (cmd) based shells ```@FOR /f "tokens=*" %i IN (`docker-machine env --shell cmd`) DO@%i```
  - On ttty (mingw) ```eval $("C:\Program Files\Docker Toolbox\docker-machine.exe" env)```
  - change into the project folder
  - ```docker-compose up```

# Docker informations on windows:
Use kitematic, the basic setup will fail -> klick use virtualbox -> skip registration
The settings->port-> tab shows e.g. the ip-address

# Docker information on linux (won`t work on windows with docker-toolbox):
- ```ifconig``` (ips)
- ```route``` (ips, gateway)
- ```docker ps``` (-a shows all) (all docker container with id and status)
- ```docker inspect <container id> (details), docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container_name_or_id``` (ip-address of docker)

# Common Probles with docker-machine env
- Cerificate error: follow instructions displayed

# Common Problemens with ```docker-compose up```
- Docker is not build correctly:  ```docker-compose up --build```
- Port is in use: change port maping in docker-compose.yml ```ports: <external>:<internal>``` Or kill the process blocking that port
- Forbidden/NotFound errors: make sure you have run ```npm i``` in frontend and built frontend ```npm run build:dev```; It that is not enough also run ```npm i``` in backend 
- Docker/node cannot mount directory: Make sure your repository is in Home (Home/Documents on windows)


# Postgres Connection
- To connect to a docker-postgres: host:postgres-db, port:54321 (like in docker-compse.yml
- To connect to a postgres HostDatabase: Same as to any postgres server with ip address of your computer.
   - add your ip in dbconfig
   - make sure your ip address is in pg_hba.conf (ubuntu in: /etc/postgresql/...)
   (e.g. all: ```host    all             all             0.0.0.0/0               md5```)
   - make sure you listen to that addresses, edit postgresql.conf, same dir as pg_hba.conf (or all i.e. : ```listen_addresses = '*'``)

# If you have windows pro or higher and don't require virtualbox for other porjects:
You can isntall docker directly and linux commands will probably work
