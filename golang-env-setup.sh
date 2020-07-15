#!/usr/bin/env bash

go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct
go env -w GOPRIVATE=git.basebit.me

go get -u -v github.com/golang/protobuf/protoc-gen-go && \
    go get -u -v github.com/gogo/protobuf/protoc-gen-gofast && \
    go get -v github.com/gogo/protobuf/protoc-gen-gogo@v1.2.1 && \
    go get -v github.com/rogpeppe/godef && \
    go get -u -v github.com/lyft/protoc-gen-validate && \
    go get -u -v github.com/envoyproxy/protoc-gen-validate && \
    go get -u github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway && \
    go get -u github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger && \
    go get -u -v golang.org/x/tools/cmd/goimports && \
    go get -u -v github.com/xo/xo && \
    go get -u -v github.com/kardianos/govendor

go get -u github.com/jnewmano/grpc-json-proxy

