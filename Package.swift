// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "AnyThinkMediationAdxSmartdigimktAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationAdxSmartdigimktAdapter",
            targets: ["AnyThinkMediationAdxSmartdigimktAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/taku-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/onpro-ads/onproSDK_Spm", exact: "6.5.87")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkSmartdigimktAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkSmartdigimktAdapter/60587.2.10/AnyThinkSmartdigimktAdapter-60587.2.10.zip",
            checksum: "4721b1fb7151eb331a93d6adfb863d8408c6809cd954fa6bf212e44565b0a9f6"
        ),
        .target(
            name: "AnyThinkMediationAdxSmartdigimktAdapterTarget",
            dependencies: [
                "AnyThinkSmartdigimktAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "SmartdigimktSDK", package: "onproSDK_Spm")
            ],
            path: "Sources/AnyThinkMediationAdxSmartdigimktAdapterTarget"
        )
    ]
)