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
        .package(url: "https://github.com/onpro-ads/onproSDK_Spm", exact: "6.5.86")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkSmartdigimktAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkSmartdigimktAdapter/60586.2.10/AnyThinkSmartdigimktAdapter-60586.2.10.zip",
            checksum: "f414dbc3bbf6238445e2831b55a55d67735359548054d1930f3df13837be7e87"
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