from debian:9.2

RUN apt-get update && \
    apt-get install -y git wget make gcc && \
    apt-get clean && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/*
RUN git clone -b '2017.09' --depth=1 --single-branch  https://github.com/rakudo/rakudo.git && \
    cd rakudo && perl Configure.pl --gen-moar --prefix /opt/rakudo-star-2017.09 && \
    make && \
    make install && \
    cd .. && rm -rf rakudo
ENV PATH=$PATH:/opt/rakudo-star-2017.09/bin:/opt/rakudo-star-2017.09/share/perl6/site/bin 

#install zef
RUN git clone https://github.com/ugexe/zef.git && cd zef && \
    perl6 -Ilib bin/zef install . && \
    cd .. && rm -rf zef && \
    zef install Linenoise
    
