FROM mcr.microsoft.com/mssql/server
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Your_password123

#VOLUME ./data/docker-entrypoint-initdb.d:/docker-entrypoint-initdb.d
EXPOSE 1433

#RUN ln -s /opt/mssql-tools/bin/sqlcmd /usr/local/bin/sqlcmd \
#    && ln -s /opt/mssql-tools/bin/bcp /usr/local/bin/bcp
COPY ./data/entrypoint.sh /opt
COPY ./data/docker-entrypoint-initdb.sh /opt
COPY ./data/scripts /opt/scripts
USER root
RUN chmod +x /opt/entrypoint.sh
RUN chmod +x /opt/docker-entrypoint-initdb.sh
ENTRYPOINT ["/bin/bash", "/opt/entrypoint.sh"]
