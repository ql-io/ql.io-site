#!/bin/bash

node lib/site.js --cluster --tables $PWD/tables/ --routes $PWD/routes/ --config $PWD/config/dev.json --port 3000 --monPort 3001
