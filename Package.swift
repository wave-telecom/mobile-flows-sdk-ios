// swift-tools-version: 5.9
// Este arquivo vai no repo público: wave-telecom/mobile-flows-sdk-ios
// Atualize `version` e os checksums a cada nova release.
import PackageDescription

let version = "v1.0.0"
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
            checksum: "98313c2b2b2df0da627b81360c42bb577a0cad7c4db3c8d4d7448a5eb8f6db8b"
        ),
        .binaryTarget(
            name: "RenderBlockNetwork",
            url: baseURL + "RenderBlockNetwork.xcframework.zip",
            checksum: "96db9a3858c539e8e750a9c195ddb5a571ecc9207c6050b4b563c5856c534f50"
        ),
        .binaryTarget(
            name: "RenderBlockView",
            url: baseURL + "RenderBlockView.xcframework.zip",
            checksum: "00e0009bfd50d8330c5ec00c7e7f2a3c01811b5b7d523b27afe0586267226459"
        ),
        .binaryTarget(
            name: "RenderBlockRuntime",
            url: baseURL + "RenderBlockRuntime.xcframework.zip",
            checksum: "7e51a6e7c4426158deeb8114d1900579463850dd70798e1dfb741b84a301955f"
        ),
    ]
)
