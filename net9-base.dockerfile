#---------------------------------------------------
#   maurobernal/net9-base - Mi imagen para net9
#   Author: Mauro Bernal
#   Date: 2023/12/26 12:00
#   Contacts: info@maurobernal.com.ar
#   docker build -f net9-base.dockerfile -t maurobernal/net9-base .
#   docker push maurobernal/net9-base
#---------------------------------------------------
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
USER root
RUN apt-get update
RUN apt-get install -y iputils-ping
RUN apt-get install -y tzdata
RUN apt-get install -y locales

ENV LANG=es_AR.UTF-8  
ENV LANGUAGE=es_AR:es  
ENV LC_ALL=es_AR.UTF-8  
ENV TZ=America/Mendoza