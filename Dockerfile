from arm64v8/ubuntu:latest
RUN apt-get update \
    && apt install -y build-essential \
    && apt install -y curl \
    && apt-get purge nodejs -y \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get update -yqq --fix-missing \
    && apt-get install -y nodejs \
    && npm i npm@latest -g
RUN npm i -g inschpektor --unsafe-perm
EXPOSE 8732
ENTRYPOINT inschpektor
