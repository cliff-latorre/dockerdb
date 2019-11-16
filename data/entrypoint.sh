#!/bin/bash
echo "$0: Starting SQL Server"
/opt/docker-entrypoint-initdb.sh & /opt/mssql/bin/sqlservr