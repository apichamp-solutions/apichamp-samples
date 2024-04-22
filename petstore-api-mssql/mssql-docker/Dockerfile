FROM mcr.microsoft.com/mssql/server:latest

COPY init-schema.sql init-schema.sql
COPY setup.sh setup.sh
COPY entrypoint.sh entrypoint.sh

#RUN /opt/mssql-tools/bin/sqlcmd -i init-schema.sql
CMD /bin/bash ./entrypoint.sh