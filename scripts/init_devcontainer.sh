#!/bin/bash

dart pub global activate protoc_plugin

cd ./grpc-server && pub get && cd ..
