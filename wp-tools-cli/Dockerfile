# syntax=docker/dockerfile:1
FROM wordpress:cli
#WORKDIR /home/www-data
USER xfs
COPY ./themeunittestdata.wordpress.xml /bin/themeunittestdata.wordpress.xml
COPY ./install.sh /bin/
COPY ./plugins.sh /bin/
#RUN ../install.sh
#CMD ["wp", "shell"]
#CMD ["../install.sh"]
