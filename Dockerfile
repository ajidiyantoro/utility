FROM alpine:3.14
LABEL maintainer="hello@labstack.id"

RUN apk update && apk add --no-cache curl openldap-clients

RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc -O /bin/mc

RUN chmod +x /bin/mc

ENTRYPOINT ["tail", "-f", "/dev/null"]
