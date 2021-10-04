#!/usr/bin/env bash
export VERSION=0.0.2
docker build . -t phntom/ds-airflow:$VERSION
docker push phntom/ds-airflow:$VERSION
