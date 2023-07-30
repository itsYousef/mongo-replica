FROM mongo:4.4.23

COPY keyfile /keys/keyfile

RUN chmod 400 /keys/keyfile
