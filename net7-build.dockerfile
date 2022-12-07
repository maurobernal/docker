#---------------------------------------------------
#   maurobernal/net6-build - Mi imagen para NET7
#   Author: Mauro Bernal
#   Date: 2022/12/07 12:00
#   Contacts: info@maurobernal.com.ar
#   docker build -f net7-build.dockerfile -t maurobernal/net7-build .
#   docker push maurobernal/net7-build
#---------------------------------------------------
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
RUN apt-get update -yq && apt-get upgrade -yq 
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install npm -y
