FROM mysql

RUN RAND="$(date +%s | rev | cut -c 1-2)$(echo ${RANDOM})" && sed -i '/\[mysqld\]/a server-id='$RAND'\nlog-bin=mysql-bin' /etc/mysql/mysql.conf.d/mysqld.cnf

RUN echo "$(tac /usr/local/bin/docker-entrypoint.sh | sed "28a echo \"START SLAVE;\" | \"\$\{mysql\[@\]\}\"\necho \"CHANGE MASTER TO master_host=\'\$MYSQL_MASTER_SERVICE_HOST\', master_user=\'\$MYSQL_REPLICATION_USER\', master_password=\'\$MYSQL_REPLICATION_PASSWORD\';\" | \"\$\{mysql\[@\]\}\"\necho \"STOP SLAVE;\" | \"\$\{mysql\[@\]\}\"" | tac)" > /usr/local/bin/docker-entrypoint.sh
