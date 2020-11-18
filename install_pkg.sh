#!/bin/bash

echo "Enabling venv..."
source venv/bin/activate
echo "Installing package $1..."
pip install $1
echo "Freezing requirements to requirements.txt..."
pip freeze --local > requirements.txt
sed -i '/^pkg-resources/d' requirements.txt
echo "Disabling venv..."
deactivate