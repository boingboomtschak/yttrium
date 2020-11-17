@echo off 
cls

:: Looking for venv, creating and installing requirements if not found, activating otherwise
IF EXIST "venv\" (
    echo Venv detected! Starting yttrium...
    call venv\Scripts\activate
    echo.
) ELSE (
    echo Venv not found! Creating...
    python3.exe -m venv venv
    echo Enabling venv...
    call venv\Scripts\activate
    echo Installing requirements from requirements.txt...
    pip install --upgrade pip
    pip install -r requirements.txt
    echo.
    echo Requirements install! Starting yttrium...
)

:: Setting flask entry point
set FLASK_APP = app.py
set FLASK_ENV = development
:: ^^ Need to add similar logic to start_server.sh in the above for prod checking

:: Printing ASCII art
echo            dP     dP            oo                     
echo            88     88                                   
echo dP    dP d8888P d8888P 88d888b. dP dP    dP 88d8b.d8b. 
echo 88    88   88     88   88'  '88 88 88    88 88''88''88 
echo 88.  .88   88     88   88       88 88.  .88 88  88  88 
echo  8888P88   dP     dP   dP       dP '88888P' dP  dP  dP 
echo       88 oooooooooooooooooooooooooooooooooooooooooooooo
echo  d8888P                                                
echo.
echo Starting yttrium...
echo.

:: Starting flask
flask run --host=0.0.0.0 -p 8080

:: Disabling venv before exiting...
deactivate