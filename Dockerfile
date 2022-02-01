# syntax=docker/dockerfile:1

FROM golang:alpine AS build-env
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]