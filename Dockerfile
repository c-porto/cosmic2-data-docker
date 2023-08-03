FROM perl:5.34 

RUN DEBIAN_FRONTEND="noninteractive" apt-get update 
RUN apt-get -y install gcc make pdl libpgplot-perl
RUN cpan Inline
RUN cpan PDL

WORKDIR /cosmic2
COPY . .




