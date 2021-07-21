load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repositories():

    http_archive(
        name = "com_google_protobuf",
        sha256 = "c6003e1d2e7fefa78a3039f19f383b4f3a61e81be8c19356f85b6461998ad3db",
        strip_prefix = "protobuf-3.17.3",
        urls = ["https://github.com/protocolbuffers/protobuf/archive/v3.17.3.tar.gz"],
    )

    http_archive(
        name = "bazel_skylib",
        sha256 = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
        ],
    )

    http_archive(
        name = "rules_proto",
        sha256 = "bc12122a5ae4b517fa423ea03a8d82ea6352d5127ea48cb54bc324e8ab78493c",
        strip_prefix = "rules_proto-af6481970a34554c6942d993e194a9aed7987780",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/af6481970a34554c6942d993e194a9aed7987780.tar.gz",
            "https://github.com/bazelbuild/rules_proto/archive/af6481970a34554c6942d993e194a9aed7987780.tar.gz",
        ],
    )

    googleapi_proto_version = "1_3_1"
    googleapi_proto_sha = "3ff2365822fb573cb1779ada5c2ac7899269cacd0836aef95ffe9d95779031f2"
    http_archive(
        name = "googleapi",
        urls = [
            "https://github.com/googleapis/googleapis/archive/common-protos-%s.zip" % googleapi_proto_version,
        ],
        sha256 = googleapi_proto_sha,
        strip_prefix = "googleapis-common-protos-%s" % googleapi_proto_version,
        build_file = "//:BUILD.googleapi",
    )
    
    rules_proto_commit = "97d8af4dc474595af3900dd85cb3a29ad28cc313"
    rules_proto_sha = "602e7161d9195e50246177e7c55b2f39950a9cf7366f74ed5f22fd45750cd208"
    http_archive(
        name = "rules_proto",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/%s.tar.gz" % rules_proto_commit,
            "https://github.com/bazelbuild/rules_proto/archive/%s.tar.gz" % rules_proto_commit,
        ],
        sha256 = rules_proto_sha,
        strip_prefix = "rules_proto-%s" % rules_proto_commit,
    )

    rules_go_version = "0.25.1"
    rules_go_sha = "7904dbecbaffd068651916dce77ff3437679f9d20e1a7956bff43826e7645fcc"
    http_archive(
        name = "io_bazel_rules_go",
        urls = [
            "https://github.com/bazelbuild/rules_go/releases/download/v{0}/rules_go-v{0}.tar.gz"
                .format(rules_go_version),
        ],
        sha256 = rules_go_sha,
    )

    gazelle_version = "0.22.3"
    gazelle_sha = "222e49f034ca7a1d1231422cdb67066b885819885c356673cb1f72f748a3c9d4"
    http_archive(
        name = "bazel_gazelle",
        urls = [
            "https://github.com/bazelbuild/bazel-gazelle/releases/download/v{0}/" +
                "bazel-gazelle-v{0}.tar.gz".format(gazelle_version),
        ],
        sha256 = gazelle_sha,
    )

    
    grpc_gateway_version = "2.5.0"
    grpc_gateway_sha = "e8334c270a479f55ad9f264e798680ac536f473d7711593f6eadab3df2d1ddc3"
    http_archive(
        name = "com_github_grpc_ecosystem_grpc_gateway",
        sha256 = grpc_gateway_sha,
        strip_prefix = "grpc-gateway-%s" % grpc_gateway_version,
        urls = ["https://github.com/grpc-ecosystem/grpc-gateway/archive/refs/tags/v%s.zip" % grpc_gateway_version],
    )