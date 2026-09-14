#!/bin/bash

echo "Checking Dockerfile..."

if [ -f Dockerfile ]; then

    if ! grep -q "^FROM " Dockerfile; then
        echo "ERROR: Dockerfile does not contain a FROM instruction."
        exit 1
    fi

fi

echo "Dockerfile validation passed....."
