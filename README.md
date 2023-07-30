- create a keyfile
    "openssl rand -base64 756 > ./keyfile"
    "chmod 400 ./keyfile"

- RUN `docker-compose up -d`
- RUN `docker exec mongo1 ./scripts/rs-init.sh`
- RUN `docker exec mongo1 ./scripts/create-admin.sh`