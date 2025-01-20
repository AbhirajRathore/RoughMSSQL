FROM mcr.microsoft.com/mssql/server:2019-latest

ENV ACCEPT_EULA=Y
ENV MSSQL_PID=Express

EXPOSE 1433

# Health check to verify database is running
HEALTHCHECK --interval=10s --timeout=3s --start-period=10s --retries=10 \
    CMD /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -Q "SELECT 1" || exit 1

# Create work directory
WORKDIR /usr/src/app

# Copy any SQL scripts if you have any
# COPY ./sql/ /usr/src/app/sql/
