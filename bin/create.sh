#!/bin/bash
docker create -ti --name bigwhoop -v /data:/etc --env-file=conf/settings.env --privileged marcelmaatkamp/bigwhoop

echo "to start: "
echo " $ docker start -ai bigwhoop"
