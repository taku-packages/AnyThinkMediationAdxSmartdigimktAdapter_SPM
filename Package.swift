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
            checksum: "a2aa6f1f812b917c16620e258c8547d7d9a4c2b29f015d96dcb09aa79c3d9d57"
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