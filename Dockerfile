# syntax=docker/dockerfile:1

FROM golang:alpine AS build-env
RUN mkdir /go/src/app && apk update && apk add git
COPY . .
WORKDIR /go/src/app
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -ldflags '-extldflags "-static"' -o app .

