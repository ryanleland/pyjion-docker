FROM python:3.10-bullseye

COPY dotnet-install.sh dotnet-install.sh

RUN chmod +x dotnet-install.sh && ./dotnet-install.sh -c 6.0

RUN pip install pyjion