#!/bin/bash
sep="#################"
echo "${sep} STARTING... ${sep}"
scriptroot=$(pwd)

if test -f "virtualenv"
then
    echo "${sep} VIRTUAL ENVIRONMENT PYTHON IS INSTALLED ${sep}"
    echo "${sep} ACTIVATING ENVIRONMENT ${sep}"
    . $(pwd)/virtualenv/bin/activate
else
    echo "${sep} CREATING VIRTUAL ENVIRONMENT PYTHON ${sep}"
    python3 -m venv virtualenv
    echo "${sep} ACTIVATING ENVIRONMENT ${sep}"
    . $(pwd)/virtualenv/bin/activate
    echo "${sep} INSTALLING JUPYTER ${sep}"
    pip install jupyter
fi

echo "${sep} RUNNING JUPYTER ${sep}"
jupyter-notebook
