#!/bin/bash

# Hard shutdown the server
node node_modules/.bin/ql.io.app --cluster --tables $PWD/tables/ --routes $PWD/routes/ --config $PWD/config/dev.json stop

