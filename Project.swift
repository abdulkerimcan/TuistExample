import ProjectDescription

let appTarget: Target = .target(name: "TuistExample",
                                destinations: .iOS,
                                product: .app,
                                bundleId: "com.kerim.tuist.TuistExample",
                                infoPlist: .default,
                                sources: "TuistExample/Sources/**",
                                resources: "TuistExample/Resources/**",
                                dependencies: [
                                    .project(target: "HomeModule", path: "Modules/HomeModule")
                                ]
)

let project = Project(name: "TuistExample",targets: [appTarget])
