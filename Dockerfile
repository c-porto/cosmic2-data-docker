FROM perl:5.34

RUN DEBIAN_FRONTEND="noninteractive" apt-get update 
RUN apt-get -y install gcc make 

COPY . /usr/src/cosmic2
WORKDIR /usr/src/cosmic2

RUN cpan install Inline
RUN cpan PDL

RUN perl ./trigZero2one.pl trgLv0_2020.200.00.08.001.HAWAII_tlm.gz


