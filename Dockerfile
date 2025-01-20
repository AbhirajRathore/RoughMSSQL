# Railway does not support deploying images directly from Microsoft's Container Registery at this time.
ARG TAG_NAME=2022-latest

FROM mcr.microsoft.com/mssql/server:$TAG_NAME