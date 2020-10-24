#!/usr/bin/env bash

java -jar ~/Applications/womtool.jar \
    validate \
    ScriNotebook.wdl \
    --inputs ScriNotebook.inputs.json
