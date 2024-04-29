#!/usr/bin/env bash
# Wait for database to startup
sleep 30
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P samplepwd!A1 -i init-schema.sql