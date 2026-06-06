FROM golang:1.22-alpine

WORKDIR /usr/src/app

COPY . .

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /parcel_app

CMD [ "/parcel_app" ]