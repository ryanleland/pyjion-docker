FROM python:3.10-bullseye

COPY bin/dotnet-install.sh dotnet-install.sh

RUN mkdir /src
ENV DOTNET_ROOT=/src/dotnet
ENV DOTNET_INSTALL_DIR=/src/dotnet

RUN chmod +x dotnet-install.sh && ./dotnet-install.sh -c 6.0

RUN pip install pyjion