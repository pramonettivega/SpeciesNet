# pramonettivega/speciesnet:latest

FROM quay.io/jupyter/datascience-notebook:python-3.11

WORKDIR /home/jovyan/work

USER root

RUN apt-get update && apt-get install -y libgl1 && rm -rf /var/lib/apt/lists/*

RUN pip install speciesnet megadetector-utils

RUN chown -R jovyan:users /home/jovyan/work

USER jovyan