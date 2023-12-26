#---------------------------------------------------
#   maurobernal/net8-build - Mi imagen para NET8
#   Author: Mauro Bernal
#   Date: 2023/12/26 12:00
#   Contacts: info@maurobernal.com.ar
#   docker build -f net8-build.dockerfile -t maurobernal/net8-build:node16 .
#   docker push maurobernal/net8-build:node16
#---------------------------------------------------
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
RUN apt-get update -yq && apt-get upgrade -yq 
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get update -yq && apt-get upgrade -yq 
RUN apt-get install -y nodejs
#RUN apt-get install npm -y
