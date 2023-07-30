- create a keyfile
    RUN `openssl rand -base64 756 > ./keyfile`

- build docker image
    RUN `docker buildx build -t mongo:4.4-withkey .`

- add mongo instance addresses to etc/hosts
    - open (C:\Windows\System32\drivers\etc\hosts) as adminstrator (/etc/hosts in linux).
    - add following 3 line to the end of the file.
    `127.0.0.1 mongo1`
    `127.0.0.1 mongo2`
    `127.0.0.1 mongo3`

- RUN `docker-compose up -d`
- RUN `docker exec mongo1 ./scripts/rs-init.sh`
- RUN `docker exec mongo1 ./scripts/create-admin.sh`
- RUN `docker exec mongo1 ./scripts/create-cluster-admin.sh`