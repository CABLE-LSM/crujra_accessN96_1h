#!/usr/bin/env bash

script_name=$(basename "${0}")

if [ -f ./work/INPUT/casa_restart.nc ]; then
    echo "${script_name}: casa restart file exists. Setting cable_user%casa_fromzero = .false."
    f90nml -p -g cable -v cable_user%casa_fromzero=.false. ./work/cable.nml ./work/cable.nml.tmp
    cp ./work/cable.nml.tmp ./work/cable.nml
    rm ./work/cable.nml.tmp
fi
