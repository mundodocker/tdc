FROM golang
WORKDIR /go/src/github.com/alexellis/href-counter/
RUN apt-get update \
    && apt-get install ca-certificates \
    && go get -d -v golang.org/x/net/html  
COPY app.go .
RUN go get -d -v golang.org/x/net/html \
  && CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .
CMD ["./app"] 
