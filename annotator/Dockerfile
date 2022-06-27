FROM httpd

#FROM ubuntu

# set users cfg file
#ARG USERS_CFG=users.json

# Install pre-reqs
RUN apt-get update
RUN apt-get install -y curl vim sudo wget rsync
RUN apt-get install -y apache2
RUN apt-get install -y python2
RUN apt-get install -y supervisor
RUN apt-get install -y default-jre
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Fetch  brat
RUN mkdir /var/www/brat
# RUN curl http://weaver.nlplab.org/~brat/releases/brat-v1.3_Crunchy_Frog.tar.gz > /var/www/brat/brat-v1.3_Crunchy_Frog.tar.gz 
#COPY ./brat-v1.3_Crunchy_Frog.tar.gz /var/www/brat/brat-v1.3_Crunchy_Frog.tar.gz
#RUN cd /var/www/brat && tar -xvzf brat-v1.3_Crunchy_Frog.tar.gz

COPY ./config/brat-v1.3_Crunchy_Frog.tar.gz /usr/local/apache2/htdocs/brat-v1.3_Crunchy_Frog.tar.gz
RUN cd /usr/local/apache2/htdocs && tar -xvzf brat-v1.3_Crunchy_Frog.tar.gz && mv brat-v1.3_Crunchy_Frog brat
COPY cgi-bin /usr/local/apache2/htdocs/brat
RUN chmod +x /usr/local/apache2/htdocs/brat/*.sh

RUN apt-get update && apt-get install -y python
ADD ./config/httpd.conf /usr/local/apache2/conf/
ADD ./config/install.sh /usr/local/apache2/htdocs/brat/

# create a symlink so users can mount their data volume at /brat-data rather than the full path
RUN mkdir -p /brat-data
RUN ln -s /brat-data /usr/local/apache2/htdocs/brat/data

ENV BRAT_USERNAME brat
ENV BRAT_PASSWORD brat
ENV BRAT_ADMIN_EMAIL blcham@gmail.com

VOLUME /brat-data

#RUN FastCGI 
#RUN cd /usr/local/apache2/htdocs/brat-v1.3_Crunchy_Frog/server/lib/ && tar xfz flup-1.0.2.tar.gz 

# Install gate-tools
COPY ./config/gate-tools.jar /opt/java-libs/gate-tools.jar
COPY ./config/gate-tools.sh /opt/java-libs/gate-tools.sh

CMD /usr/local/apache2/htdocs/brat/install.sh $BRAT_USERNAME $BRAT_PASSWORD $BRAT_ADMIN_EMAIL && httpd-foreground
