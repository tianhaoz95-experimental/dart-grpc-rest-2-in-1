#!/bin/bash

PROJECT_ROOT="/workspaces/dart-grpc-rest-2-in-1"
PROTO_ROOT="$PROJECT_ROOT/proto"
RPC_GEN_ROOT="$PROJECT_ROOT/grpc-server/lib/generated/grpc"
REST_GEN_ROOT="$PROJECT_ROOT/grpc-server/lib/generated/rest"

protoc -I "$PROTO_ROOT" \
    --dart_out="grpc:$RPC_GEN_ROOT" \
    --grpc-gateway_out="$REST_GEN_ROOT" \
    "$PROTO_ROOT/hello.proto"
