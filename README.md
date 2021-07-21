## About

This repository uses [Bazel](https://bazel.build/) to import
[protoc-gen-openapiv2](https://github.com/grpc-ecosystem/grpc-gateway) and generate
an OpenApiV2 documentation from a proto file.

This was tested on Bazel 4.0.0, but should work on 3.5.0+.

## Testing

Assuming you have Bazel 4.0.0 installed, just:
- Clone this repository.
- $ cd $REPO
- $ bazel build //example:openapiv2

Then you can copy the generated file.swagger.json file and paste into https://editor.swagger.io/.