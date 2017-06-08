#!/bin/bash

sed -i \
    -e "s/\${DB_NAME}/$DB_NAME/g" \
    -e "s/\${MYSQL_MASTER_SERVICE_HOST}/$MYSQL_MASTER_SERVICE_HOST/g" \
    -e "s/\${MYSQL_SLAVE_SERVICE_HOST}/$MYSQL_SLAVE_SERVICE_HOST/g" \
    -e "s/\${MYSQL_USER}/$MYSQL_USER/g" \
    -e "s/\${MYSQL_PASSWORD}/$MYSQL_PASSWORD/g" \
 ${MYCAT_HOME}/conf/schema.xml

sed -i \
    -e "s/\${DB_NAME}/$DB_NAME/g" \
    -e "s/\${MYSQL_USER}/$MYSQL_USER/g" \
    -e "s/\${MYSQL_PASSWORD}/$MYSQL_PASSWORD/g" \
 ${MYCAT_HOME}/conf/server.xml

sed -i \
    -e "s/\${LOG_LEVEL}/$LOG_LEVEL/g" \
 ${MYCAT_HOME}/conf/log4j2.xml

${MYCAT_HOME}/bin/mycat console
