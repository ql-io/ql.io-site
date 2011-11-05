#!/bin/bash

node lib/site.js --cluster --tables $PWD/tables/ --routes $PWD/routes/ --config $PWD/config/dev.json --port 8080 --monPort 8081
