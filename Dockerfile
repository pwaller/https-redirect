FROM golang:1.4

COPY . /go/src/github.com/pwaller/https-redirect
RUN go install -v github.com/pwaller/https-redirect