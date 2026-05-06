// swift-tools-version: 5.9
// Este arquivo vai no repo público: wave-telecom/mobile-flows-sdk-ios
// Atualize `version` e os checksums a cada nova release.
import PackageDescription

let version = "v1.1.2"
let baseURL = "https://github.com/wave-telecom/mobile-flows-sdk-ios/releases/download/\(version)/"

let package = Package(
    name: "RenderBlockSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "RenderBlockSDK",
            targets: [
                "RenderBlockCore",
                "RenderBlockNetwork",
                "RenderBlockView",
                "RenderBlockRuntime",
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "RenderBlockCore",
            url: baseURL + "RenderBlockCore.xcframework.zip",
            checksum: "8949f60f3e6daa072a474bc575906f7f753b4657ae22e44ff2528bcc2ff0a735"
        ),
        .binaryTarget(
            name: "RenderBlockNetwork",
            url: baseURL + "RenderBlockNetwork.xcframework.zip",
            checksum: "41f2170fcb173c99225d190af616ebd521b7a5da97b09db65b59fca17681b157"
        ),
        .binaryTarget(
            name: "RenderBlockView",
            url: baseURL + "RenderBlockView.xcframework.zip",
            checksum: "2f7668e14a2f4f2ef6475915a0badd1b733d564dea8e2abe400970ec9f80924c"
        ),
        .binaryTarget(
            name: "RenderBlockRuntime",
            url: baseURL + "RenderBlockRuntime.xcframework.zip",
            checksum: "c05a2dadca4baee10047a258c0bcf5dce7f35d717afdb90f31c32d0ee6b7a635"
        ),
    ]
)
