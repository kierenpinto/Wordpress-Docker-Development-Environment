# syntax=docker/dockerfile:1
FROM wordpress:cli
#WORKDIR /home/www-data
USER xfs
COPY ./themeunittestdata.wordpress.xml ../themeunittestdata.wordpress.xml
COPY ./install.sh ../install.sh
#RUN ../install.sh
#CMD ["wp", "shell"]
CMD ["../install.sh"]
