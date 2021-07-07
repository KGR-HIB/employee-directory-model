# Employee Directory Model

This repository contains the scripts for the generation of the database objects, as well as initial and test data. 

## Use test database

In the Clever Cloud provider there is a test database instance, which already contains the registered information. The connection details are as follows. 

```text
DATASOURCE_URL=jdbc:mysql://bqn9dn3czp7myog4ubqw-mysql.services.clever-cloud.com:3306/bqn9dn3czp7myog4ubqw
DATASOURCE_USERNAME=uja7jqqw8xsg8ey5
DATASOURCE_PASSWORD=PNQkgYN4uKfOyJTwx27i
```

## Create new instance Data Base

**Connect with the root user on the mysq server instance**

```shell
mysql -u root -p
```

### Create database

Run the script: [Scripts/ddl/hbred_create_db.sql](../Scripts/ddl/hbred_create_db.sql)

### Create user

Run the script: [Scripts/ddl/hbred_create_user.sql](../Scripts/ddl/hbred_create_user.sql)

### Assign permissions to users 

root: [Scripts/dcl/hbred_grant_root.sql](../Scripts/dcl/hbred_grant_root.sql)

HHTEDDB: [Scripts/dcl/hbred_grant_develop.sql](../Scripts/dcl/hbred_grant_develop.sql)

### Create tables

Run the script: [Scripts/ddl/hbred_create_tables.sql](../Scripts/ddl/hbred_create_tables.sql)

### Create relationships between tables 

Run the script: [Scripts/ddl/hbred_alter_relationships.sql](../Scripts/ddl/hbred_alter_relationships.sql)

### Add initial data 

Run the script: [Scripts/dml/hbred_insert_init_data.sql](../Scripts/dml/hbred_insert_init_data.sql)

### Add test data

Run the script: [Scripts/dml/hbred_insert_test_data.sql](./Scripts/dml/hbred_insert_test_data.sql)



