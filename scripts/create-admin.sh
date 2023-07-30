mongo <<EOF
use admin;
db.createUser(
  {
    user: "dba",
    pwd: "123456",
    roles: [ 
      { role: "userAdminAnyDatabase", db: "admin" },
      { role: "readWriteAnyDatabase", db: "admin" } 
    ]
  }
);
EOF