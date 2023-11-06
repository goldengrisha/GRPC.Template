SHELL=/bin/bash

# Installs the environment after checkout
create:
	python3 -m venv ./env

poetry_init:
	poetry init

test:
	python -m unittest tests

# 1. Compiles client/server-side code
# 2. Fixes the generated protobuf relative import error
proto:
	python -m grpc_tools.protoc -I=protobuf/ --python_out=src/proto --grpc_python_out=src/proto protobuf/*.proto
	cd src/proto && sed -i '' 's/^\(import.*pb2\)/from . \1/g' *.py