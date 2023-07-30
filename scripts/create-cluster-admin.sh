#!/bin/bash

mongo -u $MONGO_INITDB_ROOT_USERNAME -p $MONGO_INITDB_ROOT_PASSWORD <<EOF
use admin;
db.createUser(
  {
    user: "$MONGO_CLUSTER_ADMIN",
    pwd: "$MONGO_CLUSTER_PASSWORD",
    roles: [ { "role" : "clusterAdmin", "db" : "admin" } ]
  }
);
EOF