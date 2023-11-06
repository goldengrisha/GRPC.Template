# Python GRPC Server Template

A minimal template to start with a Python GRPC Server w/ Protobuf, Conda. Example used from [grpc](https://github.com/grpc/grpc) repository.

|python|pip|grpcio|grpcio-tools|
|:--:|:--:|:--:|:--:|
|3.11|19.3.1|1.25.0|1.25.0|

## Usage

(1) First install the environment described in section: **Install**.

(2) Compile client/server-side code with the following command:

```bash
make proto
```

(3) To test: Run `python -m src.main` and `python -m src.greeter_client` in two separat python shells.

(4) Normally, you would start the service by running `python -m src.main`.

### Structure

|Package|Description|
|:--:|:--|
|`grpc`|GRPC Utils & Server|
|`models`|Model Definitions|
|`proto`|Generated Protobuf files|
|`services`|Implementation of the Protobuf API|
|`store`|Global Service Store|



