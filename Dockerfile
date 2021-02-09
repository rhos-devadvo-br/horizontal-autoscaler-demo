FROM golang:1.11

USER nobody

RUN mkdir -p /go/src/github.com/openshift/horizontal-autoscaler-demo
WORKDIR /go/src/github.com/openshift/horizontal-autoscaler-demo

COPY . /go/src/github.com/openshift/horizontal-autoscaler-demo
RUN go build

CMD ["./horizontal-autoscaler-demo"]