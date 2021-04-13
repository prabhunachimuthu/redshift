#!/bin/bash


export ODBCSYSINI=${HOME}/.apt/usr/lib/odbc/conf/

mkdir -p /etc

echo "[redshift]
Description=RedshiftDB
Driver=Amazon Redshift (x64)
Locale=en-US
PORT=5439
SSL=on
CLIENT_SESSION_KEEP_ALIVE=true
uid=${REDSHIFT_USERNAME}
pwd=${REDSHIFT_PASSWORD}
QuickBaseServer=${REDSHIFT_SERVER}
pwdispassword=0
" > ${ODBCSYSINI}/odbc.ini
