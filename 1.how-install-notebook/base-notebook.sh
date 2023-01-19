$sep = "#################"
echo "$sep STARTING... $sep"

if [test -f "$PSScriptRoot/virtualenv"]
then
    echo "$sep VIRTUAL ENVIRONMENT PYTHON IS INSTALLED $sep"
    echo "$sep ACTIVATING ENVIRONMENT $sep"
    virtualenv/Scripts/activate
else
    echo "$sep CREATING VIRTUAL ENVIRONMENT PYTHON $sep"
    python -m venv virtualenv
    echo "$sep ACTIVATING ENVIRONMENT $sep"
    source virtualenv/Scripts/activate
    echo "$sep INSTALLING JUPYTER $sep"
    pip install jupyter
}

echo "$sep RUNNING JUPYTER $sep"
jupyter-lab