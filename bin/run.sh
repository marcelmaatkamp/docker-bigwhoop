#!/bin/bash
docker run -ti --privileged -v $PWD/config:/gnuradio/DGSN_bigwhoop/node/config marcelmaatkamp/bigwhoop
