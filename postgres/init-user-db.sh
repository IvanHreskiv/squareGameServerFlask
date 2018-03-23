#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 -U postgres <<-EOSQL
    CREATE USER docker;
    CREATE DATABASE flask_jwt_auth;
    GRANT ALL PRIVILEGES ON DATABASE flask_jwt_auth TO docker;
    CREATE DATABASE flask_jwt_auth_test;
    GRANT ALL PRIVILEGES ON DATABASE flask_jwt_auth_test TO docker;
EOSQL
