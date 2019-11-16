FROM mcr.microsoft.com/mssql/server
LABEL maintainer="Cliff La Torre"

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Your_password123
EXPOSE 1433
COPY ./database /opt

USER root
RUN chmod +x /opt/entrypoint.sh
RUN chmod +x /opt/docker-entrypoint-initdb.sh

ENTRYPOINT ["/bin/bash", "/opt/entrypoint.sh"]
