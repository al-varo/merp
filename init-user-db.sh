#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
        CREATE USER lambertus WITH SUPERUSER PASSWORD '@changeme@';
        CREATE USER demo WITH SUPERUSER PASSWORD '@changeme@';
        CREATE USER odoo WITH SUPERUSER PASSWORD '@changeme@';
        CREATE USER offline WITH PASSWORD '@changeme@';
EOSQL
