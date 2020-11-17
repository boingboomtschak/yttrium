#!/bin/bash
clear

# Looking for venv, creating and installing requirements if not found, activating otherwise
if [[ ! -d "venv/" ]]
then
    echo -e "\u001b[31mVenv not found! Creating...\u001b[0m"
    python3 -m venv venv
    echo -e "\u001b[33mEnabling venv..."
    source venv/bin/activate
    echo -e "\u001b[33mInstalling requirements from requirements.txt...\u001b[0m"
    python3 -m pip install --upgrade pip
    python3 -m pip install -r requirements.txt
    echo
    echo -e "\u001b[33mRequirements installed! Starting yttrium...\u001b[0m"
    echo
else
    echo -e "\u001b[33mVenv detected! Starting yttrium...\u001b[0m"
    source venv/bin/activate
    echo
fi

# Exporting app entry point
export FLASK_APP=app.py

# Checking for '--prod' in script and setting to production environment 
if [[ $1 = "--prod" ]]
then
    export FLASK_ENV=production
else
    export FLASK_ENV=development
fi

# Printing ascii art :)

echo -e "\u001b[32m           dP     dP            oo                     "
echo -e "           88     88                                   "
echo -e "dP    dP d8888P d8888P 88d888b. dP dP    dP 88d8b.d8b. "
echo -e "88    88   88     88   88'  '88 88 88    88 88''88''88 "
echo -e "88.  .88   88     88   88       88 88.  .88 88  88  88 "
echo -e " 8888P88   dP     dP   dP       dP '88888P' dP  dP  dP "
echo -e "      88 \u001b[34moooooooooooooooooooooooooooooooooooooooooooooo\u001b[32m"
echo -e " d8888P                                                "
echo
echo -e "\u001b[0mStarting yttrium..."

# Starting flask
flask run --host=0.0.0.0 -p 8080

# Disabling venv before exiting...
deactivate



