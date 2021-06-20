#!/bin/bash

PROJECT_ROOT="/workspaces/dart-grpc-rest-2-in-1"
PROTO_ROOT="$PROJECT_ROOT/proto"
RPC_GEN_ROOT="$PROJECT_ROOT/grpc-server/lib/generated/grpc"
REST_GEN_ROOT="$PROJECT_ROOT/grpc-server/lib/generated/rest"

protoc -I "$PROTO_ROOT" \
    --dart_out="grpc:$RPC_GEN_ROOT" \
    --grpc-gateway_out="$REST_GEN_ROOT" \
    --grpc-gateway_opt logtostderr=true \
    --grpc-gateway_opt paths=source_relative \
    --grpc-gateway_opt generate_unbound_methods=true \
    "$PROTO_ROOT/hello.proto"