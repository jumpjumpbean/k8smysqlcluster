FROM gaven/mycat

COPY schema.xml /usr/local/mycat/conf/schema.xml
COPY server.xml /usr/local/mycat/conf/server.xml
COPY log4j2.xml /usr/local/mycat/conf/log4j2.xml
COPY entrypoint.sh /root/
CMD ["/root/entrypoint.sh"]
