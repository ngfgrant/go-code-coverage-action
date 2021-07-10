FROM golang:alpine

RUN apk add sed grep gawk

COPY entrypoint.sh /go/entrypoint.sh
COPY code-condition.awk /go/code-condition.awk

ENTRYPOINT ["/go/entrypoint.sh"]
