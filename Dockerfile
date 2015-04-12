FROM marcelmaatkamp/gnuradio:3.7.1
WORKDIR /gnuradio

# --- 
# libraries
RUN apt-get install -y python-setuptools python-dev build-essential python-pip
RUN pip install pyrtlsdr

# --- 
# code
RUN git clone https://github.com/aerospaceresearch/DGSN_bigwhoop.git
WORKDIR /gnuradio/DGSN_bigwhoop/node

ADD conf/workunit.xml /gnuradio/DGSN_bigwhoop/node/workunit.xml
ADD conf/set_your_groundstation_config.xml /gnuradio/DGSN_bigwhoop/node/set_your_groundstation_config.xml

ENTRYPOINT python bigwhoop.py
