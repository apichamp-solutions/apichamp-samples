#!/usr/bin/env bash
set -m
./opt/mssql/bin/sqlservr & ./setup.sh
fg
