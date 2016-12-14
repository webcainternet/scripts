#!/bin/bash
echo "CREATE DATABASE $1;"
echo "GRANT ALL PRIVILEGES ON \`$1\` . * TO '$1'@'%' IDENTIFIED BY '$2';"
echo "GRANT ALL PRIVILEGES ON \`$1\` . * TO '$1'@'localhost' IDENTIFIED BY '$2';"
echo "flush privileges;"
