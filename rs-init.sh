#!/bin/bash

mongo <<EOF
var config = {
    "_id": "dbrs",
    "members": [
        {
            "_id": 1,
            "host": "localhost:27017",
            "priority": 3
        }
    ]
};
rs.initiate(config, { force: true });
rs.status();
EOF