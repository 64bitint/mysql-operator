#!/bin/bash

cp docker-build/Dockerfile docker-build/Dockerfile.bak
sed 's#%%MYSQL_OPERATOR_PYTHON_DEPS%%#python-deps-39#g' docker-build/Dockerfile > tmpfile
cat docker-deps/Dockerfile.py39 tmpfile > docker-build/Dockerfile
rm tmpfile

./gen_dockerfile.sh

mv docker-build/Dockerfile.bak docker-build/Dockerfile

