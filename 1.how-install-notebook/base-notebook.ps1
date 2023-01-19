$sep = "#################"
Write-Output "$sep STARTING... $sep"

if(Test-Path "$PSScriptRoot/virtualenv"){
    Write-Output "$sep VIRTUAL ENVIRONMENT PYTHON IS INSTALLED $sep"
    Write-Output "$sep ACTIVATING ENVIRONMENT $sep"
    cd $PSScriptRoot
    virtualenv/Scripts/activate
}else{
    Write-Output "$sep CREATING VIRTUAL ENVIRONMENT PYTHON $sep"
    python -m venv virtualenv
    Write-Output "$sep ACTIVATING ENVIRONMENT $sep"
    cd $PSScriptRoot
    virtualenv/Scripts/activate
    Write-Output "$sep INSTALLING JUPYTER $sep"
    pip install jupyter
}

Write-Output "$sep RUNNING JUPYTER $sep"
jupyter-lab