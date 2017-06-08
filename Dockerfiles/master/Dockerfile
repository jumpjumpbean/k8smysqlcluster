FROM mysql

RUN sed -i '/\[mysqld\]/a server-id=1\nlog-bin=mysql-bin' /etc/mysql/mysql.conf.d/mysqld.cnf

RUN echo "$(tac /usr/local/bin/docker-entrypoint.sh | sed "28a echo \'FLUSH PRIVILEGES;\' | \"\$\{mysql\[@\]\}\"\necho \"GRANT REPLICATION SLAVE ON *.* TO \'\$MYSQL_REPLICATION_USER\'@\'%\' IDENTIFIED BY \'\$MYSQL_REPLICATION_PASSWORD\';\" | \"\$\{mysql\[@\]\}\"" | tac)" > /usr/local/bin/docker-entrypoint.sh
