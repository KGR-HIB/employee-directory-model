# Create new instance Data Base

**Connect with the root user on the mysq server instance**

```shell
mysql -u root -p
```

## Create database

Run the script: [Scripts/ddl/hbred_create_db.sql](../Scripts/ddl/hbred_create_db.sql)

## Create user

Run the script: [Scripts/ddl/hbred_create_user.sql](../Scripts/ddl/hbred_create_user.sql)

## Assign permissions to users 

root: [Scripts/dcl/hbred_grant_root.sql](../Scripts/dcl/hbred_grant_root.sql)

HHTEDDB: [Scripts/dcl/hbred_grant_develop.sql](../Scripts/dcl/hbred_grant_develop.sql)

## Create tables

Run the script: [Scripts/ddl/hbred_create_tables.sql](../Scripts/ddl/hbred_create_tables.sql)

## Create relationships between tables 

Run the script: [Scripts/ddl/hbred_alter_relationships.sql](../Scripts/ddl/hbred_alter_relationships.sql)

