import ProjectDescription

let frameworkTarget: Target = .target(name: "NetworkKit", destinations: .iOS, product: .staticFramework, bundleId: "com.kerim.networkKit", infoPlist: .default,sources: "Sources/**")
let project = Project(
    name: "NetworkKit",
    targets: [
        frameworkTarget
    ]
)
