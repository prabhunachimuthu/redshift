#!/bin/bash


export ODBCSYSINI=${HOME}/.apt/usr/lib/odbc/conf/

mkdir -p /etc

echo "[redshiftodbc]
Driver=Amazon Redshift (x64)
Description=Amazon Redshift (x64)
uid=${REDSHIFT_USERNAME}
pwd=${REDSHIFT_PASSWORD}
QuickBaseServer=${REDSHIFT_SERVER}
pwdispassword=0
" > ${ODBCSYSINI}/odbc.ini
