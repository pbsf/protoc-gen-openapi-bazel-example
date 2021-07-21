workspace(
    name = "testapi",
)

load("//:load.bzl", "repositories")
repositories()

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()


load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")
rules_proto_dependencies()
rules_proto_toolchains()


# ----------------------------------------------------------------------------
# Go Rules.

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

go_rules_dependencies()
go_register_toolchains(version = "1.16.5")
gazelle_dependencies()

load("@com_github_grpc_ecosystem_grpc_gateway//:repositories.bzl", grpc_gateway_deps = "go_repositories")
grpc_gateway_deps()


load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")
protobuf_deps()