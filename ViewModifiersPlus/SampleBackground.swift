//
//----------------------------------------------
// Original project: ViewModifiersPlus
// by  Stewart Lynch on 2025-02-14
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2025 CreaTECH Solutions. All rights reserved.

import SwiftUI

enum SampleBackground {
    static let colorBackground = Color.red
    static let linearGradient = LinearGradient(colors: [.red, .white], startPoint: .top, endPoint: .bottom)
    static let meshBackground = MeshGradient(
        width: 2,
        height: 2,
        points: [[0,0], [1,0], [0,1], [1,1]],
        colors: [.teal, .purple, .indigo, .green]
    )
}
