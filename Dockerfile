FROM node:buster
LABEL maintainer="tomasz@chorwat.pl"
LABEL project="https://github.com/tchorwat/chromium-ng-test"

ENV CHROME_BIN=/usr/lib/chromium/chromium

COPY ./entrypoint.sh /entrypoint.sh

# Install latest Chromium package & @angular/cli
RUN chmod 777 /entrypoint.sh \
  && apt -y update \
  && apt -y install chromium chromium-l10n \
  && mkdir -p /data/.npm \
  && npm set cache /data/.npm \
  && echo 'n' | npm install -g @angular/cli \
  && ng config -g cli.warnings.versionMismatch false \
  && mkdir -p /data/src \
  && chmod -R 777 /data \
  && rm -rf /var/lib/apt/lists/*
WORKDIR /data/src
VOLUME /data/.npm
USER node
ENTRYPOINT ["/entrypoint.sh"]
CMD ["ng", "test"]
