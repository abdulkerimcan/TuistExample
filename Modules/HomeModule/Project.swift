import ProjectDescription

let frameWorkTarget: Target = .target(name: "HomeModule",
                                      destinations: .iOS,
                                      product: .staticFramework,
                                      bundleId: "com.kerim.HomeModule",
                                      infoPlist: .default,
                                      sources: "Sources/**",
                                      resources: "Resources/**",
                                      dependencies: [
                                        .project(target: "NetworkKit", path: "../NetworkKit")
])

let project = Project(name: "HomeModule",targets: [

    frameWorkTarget
])
