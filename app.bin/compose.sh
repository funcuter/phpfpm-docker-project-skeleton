#!/bin/bash

baseDir=$(cd `dirname $0`; dirname `pwd`)

projectName=$(cat $baseDir/.project)

docker-compose \
    --file "$baseDir/app.compose/docker-compose.yml" \
    --env-file "$baseDir\.env" \
    --project-name "$projectName" \
    --project-directory "$baseDir" \
    "$@"