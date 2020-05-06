FROM alpine:3.11.5

RUN apk add --no-cache --update \
    unzip ca-certificates curl && \
    curl -L -o terraform.zip "https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip" && \
    unzip -o terraform.zip -d /usr/local/bin && \
    rm -f terraform.zip
