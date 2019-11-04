FROM golang:1.13.4-alpine

COPY . /go/src/github.com/sensiblecodeio/https-redirect
RUN go install -v github.com/sensiblecodeio/https-redirect
