#---------------------------------------------------
#   maurobernal/net6-base - Mi imagen para NET7
#   Author: Mauro Bernal
#   Date: 2022/12/07 12:00
#   Contacts: info@maurobernal.com.ar
#   docker build -f net7-base.dockerfile -t maurobernal/net7-base .
#   docker push maurobernal/net7-base
#---------------------------------------------------
FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
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