// swift-tools-version: 5.9
// Este arquivo vai no repo público: wave-telecom/mobile-flows-sdk-ios
// Atualize `version` e os checksums a cada nova release.
import PackageDescription

let version = "v1.1.1"
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
            checksum: "9f1aacd9cc387eb229d5dbf1b9a70fd28afc59051291c50d336f8912ce8298a4"
        ),
        .binaryTarget(
            name: "RenderBlockNetwork",
            url: baseURL + "RenderBlockNetwork.xcframework.zip",
            checksum: "b9a352f7679151ecbc53b943fb0749914cdad9c33f2135b9ddbd1e89daebd6f7"
        ),
        .binaryTarget(
            name: "RenderBlockView",
            url: baseURL + "RenderBlockView.xcframework.zip",
            checksum: "fc51faff7c9c35531381a924aa3a5bde34e279c79705cfb87ca003935c355a17"
        ),
        .binaryTarget(
            name: "RenderBlockRuntime",
            url: baseURL + "RenderBlockRuntime.xcframework.zip",
            checksum: "1d88dbb6370adb866d4ee965ac34953da170de1d2ad2dd13f6ed359655b7c781"
        ),
    ]
)
