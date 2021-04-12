FROM golang:alpine
# AS builder
WORKDIR /mnt
RUN go get -d -v golang.org/x/net/html
COPY . .

# FROM alpine:latest
# RUN apk --no-cache add ca-certificates
# WORKDIR /root/
# COPY --from=builder /mnt/app .
# CMD ["./app"]