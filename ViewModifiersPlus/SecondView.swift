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

struct SecondView: View {
    var body: some View {
        ContentUnavailableView("Second View", systemImage: "window.vertical.open", description: Text("Sometimes in NavigationStack and sometimes as a modal sheet"))
            .scaleEffect(1.5)
            .padding()
            .navigationTitle("Second View")
            .withBackgroundView(.meshGradient(SampleBackground.meshBackground), opacity: 0.5)
    }
}

#Preview {
    SecondView()
        .inNavStack()
}
