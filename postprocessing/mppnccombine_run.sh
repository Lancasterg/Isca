#!/usr/bin/env bash

# 1. Load the necessary tools into the environment
if [[ -z "${GFDL_PURGE}" ]] || [ "${GFDL_PURGE}" = true ]; then
    module purge
fi
source $GFDL_BASE/src/extra/env/$GFDL_ENV
module list

# Run with input file as input taken from BASH script
echo ${1}
exec ${1}/mppnccombine.x ${2}