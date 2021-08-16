FROM    golang:1.13.15
RUN     mkdir -p /go/src/app
COPY    . /go/src/app
WORKDIR /go/src/app
RUN     GOPATH=~/go
RUN     go get
EXPOSE  8080
RUN     go build
CMD     ["./app"]