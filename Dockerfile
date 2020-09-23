FROM node:buster

ENV CHROME_BIN=/usr/lib/chromium/chromium

# Install latest Chromium package & @angular/cli
RUN apt -y update \
  && apt -y install chromium chromium-l10n \
  && echo 'n' | npm install -g @angular/cli \
  && mkdir -p /root/src \
  && rm -rf /var/lib/apt/lists/*
WORKDIR /root/src
CMD ["ng","test"]
