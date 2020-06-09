FROM golang:1.14.4-alpine

ENV CGO_ENABLED=0

COPY . /go/src/github.com/sensiblecodeio/https-redirect
RUN go install -v github.com/sensiblecodeio/https-redirect
