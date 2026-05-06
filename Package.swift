// swift-tools-version: 5.9
// Este arquivo vai no repo público: wave-telecom/mobile-flows-sdk-ios
// Atualize `version` e os checksums a cada nova release.
import PackageDescription

let version = "v1.1.0"
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
            checksum: "ed1e8f288c44742392d52145159678b8df6538acf0b5eb328216d3296b755f92"
        ),
        .binaryTarget(
            name: "RenderBlockNetwork",
            url: baseURL + "RenderBlockNetwork.xcframework.zip",
            checksum: "1a21894201d7415101ed656cc97d935ec1ce8d7dbe2168d654f2bc112509cf7a"
        ),
        .binaryTarget(
            name: "RenderBlockView",
            url: baseURL + "RenderBlockView.xcframework.zip",
            checksum: "36be7f1ec81f18e1a6e8fd337d23fde6dac659a8869e78261cc72d9721174728"
        ),
        .binaryTarget(
            name: "RenderBlockRuntime",
            url: baseURL + "RenderBlockRuntime.xcframework.zip",
            checksum: "48e6641c7bee923c6659343687c863d218a872ce5d0706472af5b7031263f500"
        ),
    ]
)
