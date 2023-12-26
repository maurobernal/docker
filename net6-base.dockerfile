#---------------------------------------------------
#   maurobernal/net6-base - Mi imagen para NET6
#   Author: Mauro Bernal
#   Date: 2022/10/12 12:00
#   Contacts: info@maurobernal.com.ar
#   docker build -f net6-base.dockerfile -t maurobernal/net6-base .
#   docker push maurobernal/net6-base
#---------------------------------------------------
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
USER root
RUN apt-get update
RUN apt-get install -y iputils-ping
RUN apt-get install -y nano
RUN apt-get install -y tzdata
RUN apt-get install -y locales
RUN apt-get install -y certbot
ENV LANG es_AR.UTF-8  
ENV LANGUAGE es_AR:es  
ENV LC_ALL es_AR.UTF-8  
ENV TZ America/Mendoza