#!/bin/bash
app="ddocker.test"
docker build -t ${app} .
docker run -d -p 53733:80 --name=${app} -v $PWD:/app ${app}