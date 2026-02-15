@echo off
REM Create a local runtime directory to avoid permission errors
if not exist "jupyter_runtime" mkdir "jupyter_runtime"
set JUPYTER_RUNTIME_DIR=%~dp0jupyter_runtime

REM Launch Jupyter Notebook using python module
echo Starting Jupyter Notebook...
python -m notebook

pause
