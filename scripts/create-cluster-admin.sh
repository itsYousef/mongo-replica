#!/bin/bash

mongo -u "dba" -p "123456" <<EOF
use admin;
db.createUser(
  {
    user: "rsAdmin",
    pwd: "123456",
    roles: [ { "role" : "clusterAdmin", "db" : "admin" } ]
  }
);
EOF