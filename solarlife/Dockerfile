ARG BUILD_FROM=ghcr.io/home-assistant/base:latest
FROM $BUILD_FROM

RUN apk add --no-cache \
    git \
    build-base \
    bluez \
    bluez-dev \
    glib-dev \
    jq

RUN git clone https://github.com/majonezz/solarlife.git /tmp/solarlife-src

WORKDIR /tmp/solarlife-src
RUN make

RUN cp /tmp/solarlife-src/solarlife /usr/bin/solarlife && chmod +x /usr/bin/solarlife

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
