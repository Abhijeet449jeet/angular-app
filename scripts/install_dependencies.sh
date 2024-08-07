#!/bin/bash

# Define variables
APP_DIR="/home/ubuntu/angular-app"

# Check if the application directory exists
if [ ! -d "$APP_DIR" ]; then
    echo "Error: Directory $APP_DIR not found. Creating directory..."
    mkdir -p "$APP_DIR"
    if [ $? -ne 0 ]; then
        echo "Error: Failed to create directory $APP_DIR. Exiting script."
        exit 1
    fi
fi

# Change directory to the application directory
cd "$APP_DIR" || exit 1

# Check if npm is installed and available
if ! command -v npm &> /dev/null; then
    echo "Error: npm command not found. Make sure Node.js and npm are installed and accessible."
    exit 1
fi

# Navigate to the directory containing package.json
cd /home/ubuntu/angular-app

# Install dependencies using npm
npm install

# Check npm install exit status
if [ $? -ne 0 ]; then
    echo "Error: npm install command failed."
    exit 1
fi

# Additional commands if needed...

# Exit successfully if everything went fine
exit 0
