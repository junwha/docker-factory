#!/bin/bash
docker build -t junwha/none --build-arg FILE=$1 ./
docker push junwha/none