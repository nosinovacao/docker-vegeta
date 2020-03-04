# Build stage
FROM golang:1.12 as build-env

ENV ROOT=vegeta-server
RUN git clone https://github.com/nitishm/vegeta-server.git

WORKDIR $ROOT
RUN make build

# Final stage
FROM gcr.io/distroless/static
COPY --from=build-env /go/vegeta-server/bin/vegeta-server .
EXPOSE 80
CMD ["./vegeta-server"]