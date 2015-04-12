#!/bin/bash

# copy files from external mount
cp config/set_your_groundstation_config.xml .
cp config/workunit.xml .

# start bigwhoop
python bigwhoop.py
