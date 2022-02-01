FROM golang:alpine AS build-env
RUN mkdir /go/src/go-cicd && apk update && apk add git
ADD main.go /go/src/go-cicd/
ADD go.mod /go/src/go-cicd/
WORKDIR /go/src/go-cicd
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -ldflags '-extldflags "-static"' -o go-cicd .

FROM scratch
WORKDIR /go-cicd
COPY --from=build-env /go/src/go-cicd/go-cicd .
ENTRYPOINT [ "./go-cicd" ]