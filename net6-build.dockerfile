#---------------------------------------------------
#   maurobernal/net6-build - Mi imagen para NET6
#   Author: Mauro Bernal
#   Date: 2022/10/12 12:00
#   Contacts: info@maurobernal.com.ar
#   docker build -f net6-build.dockerfile -t maurobernal/net6-build .
#   docker push maurobernal/net6-build
#---------------------------------------------------
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
RUN apt-get update -yq && apt-get upgrade -yq 
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install npm -y
