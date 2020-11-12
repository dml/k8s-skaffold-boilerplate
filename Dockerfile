FROM golang:alpine3.12 as builder
COPY main.go .
RUN go build -o /app main.go

FROM alpine:3.10
CMD ["./app"]
COPY --from=builder /app .
