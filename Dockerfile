FROM node:buster

ENV CHROME_BIN=/usr/lib/chromium/chromium

COPY ./entrypoint.sh /root/entrypoint.sh

# Install latest Chromium package & @angular/cli
RUN chmod +x /root/entrypoint.sh \
  && apt -y update \
  && apt -y install chromium chromium-l10n \
  && mkdir -p /root/.npm \
  && npm set cache /root/.npm \
  && echo 'n' | npm install -g @angular/cli \
  && ng config -g cli.warnings.versionMismatch false \
  && mkdir -p /root/src \
  && rm -rf /var/lib/apt/lists/*
WORKDIR /root/src
VOLUME /root/.npm
ENTRYPOINT ["/root/entrypoint.sh"]
CMD ["ng", "test"]