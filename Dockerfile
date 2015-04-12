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

ENTRYPOINT python bigwhoop.py
