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
struct ContentView: View {
    
    @State private var showModal = false
    @State private var text = ""
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(
                    destination: SecondView()) {
                        Image(systemName: "arrowshape.right.fill")
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                TextField("Text Field", text: $text, axis: .vertical)
                TextEditor(text: $text)
            }
            .padding()
            .font(.title)
            .toolbar {
                Button {
                    showModal.toggle()
                } label: {
                    Image(systemName: "eye.fill")
                }
            }
            .sheet(isPresented: $showModal) {
                SecondView()
                    .navigationBarTitleDisplayMode(.inline)
                    .inNavStack()
            }
            .navigationTitle("Crafting ViewModifiers")
        }
    }
}

#Preview {
    ContentView()
}
