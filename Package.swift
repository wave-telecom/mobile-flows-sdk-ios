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
            checksum: "5c2366d44bbedb2278ec86f07d6683998b5d0af13093bc4f88c392e0023368fa"
        ),
        .binaryTarget(
            name: "RenderBlockNetwork",
            url: baseURL + "RenderBlockNetwork.xcframework.zip",
            checksum: "9ba7a44d7e58ec8577c2c7427ec992bebc9a364f17c5abf90f8ca217ee4028ec"
        ),
        .binaryTarget(
            name: "RenderBlockView",
            url: baseURL + "RenderBlockView.xcframework.zip",
            checksum: "590cb7439cd4e8bc9778564cac9043af96386f9b56ad4ca1a4efad99b63ae5e8"
        ),
        .binaryTarget(
            name: "RenderBlockRuntime",
            url: baseURL + "RenderBlockRuntime.xcframework.zip",
            checksum: "ca6efe013f3630f4ce6e392cd6b8df3216e0b6b8bbdaee895d132121cd885bdf"
        ),
    ]
)
