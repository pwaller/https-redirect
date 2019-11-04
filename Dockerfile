FROM golang:1.4

COPY . /go/src/github.com/sensiblecodeio/https-redirect
RUN go install -v github.com/sensiblecodeio/https-redirect
