#!/bin/bash
docker build -t junwha/none --build-arg FILE=junwha-$1-latest.tar.gz ./
docker push junwha/none