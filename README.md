# docker-bigwhoop

## HOW TO RUN
Create a new directory 'config' and modify the variables:
```
 $ mkdir config
 $ cd config
 $ wget https://raw.githubusercontent.com/aerospaceresearch/DGSN_bigwhoop/master/node/set_your_groundstation_config.xml
 $ wget https://raw.githubusercontent.com/aerospaceresearch/DGSN_bigwhoop/master/node/workunit.xml
 $ vi set_your_groundstation_config.xml workunit.xml
 $ cd ..
```

After that start the image and mount the configuration directory as external volume:
```
 $ docker run -ti \
   --name bigwhoop \
   --privileged \
   -v $PWD/config:/gnuradio/DGSN_bigwhoop/node/config \
   marcelmaatkamp/bigwhoop
```

## HOW TO EXTEND
Define your own 'Dockerfile':
```
FROM marcelmaatkamp:bigwhoop
...
```
