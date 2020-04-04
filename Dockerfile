FROM golang:alpine3.11

ADD . $GOPATH/src/github.com/ndecker/fritzbox_exporter

RUN apk add --no-cache git
RUN go get -v github.com/ndecker/fritzbox_exporter

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 9133

ENTRYPOINT ["/start.sh"]
#ENTRYPOINT ["fritzbox_exporter"]
CMD [""]

