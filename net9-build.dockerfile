#---------------------------------------------------
#   maurobernal/net8-build - Mi imagen para NET8
#   Author: Mauro Bernal8
#   Date: 2024/11/19 12:00
#   Contacts: info@maurobernal.com.ar
#   docker build -f net9-build.dockerfile -t maurobernal/net9-build:node20 .
#   docker push maurobernal/net9-build:node20
#---------------------------------------------------
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
RUN apt-get update -yq && apt-get upgrade -yq 
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get update -yq && apt-get upgrade -yq 
RUN apt-get install -y nodejs
#RUN apt-get install npm -y
