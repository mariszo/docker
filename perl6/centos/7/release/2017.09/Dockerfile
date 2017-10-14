from centos:centos7

RUN yum -y install git perl-autodie && \
    yum -y groupinstall 'Development Tools' && \
    yum clean all && \
    rm -rf /var/cache/yum

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
    
