#!/bin/bash
docker run -ti --entrypoint bash --privileged -v $PWD/config:/gnuradio/DGSN_bigwhoop/node/config marcelmaatkamp/bigwhoop
