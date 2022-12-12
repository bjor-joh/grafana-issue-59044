#!/bin/bash

go run main.go &
if [ $? -eq 0 ]; then
    echo Started generator
else
    echo FAILED to start generator
    exit 1
fi

docker-compose up 