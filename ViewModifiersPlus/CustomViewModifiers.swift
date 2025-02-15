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

struct InNavStack: ViewModifier {
    func body(content: Content) -> some View {
        NavigationStack {
            content
        }
    }
}

extension View {
    func inNavStack() -> some View {
        self.modifier(InNavStack())
    }
}

struct TextEditorStyle: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    enum Style {
        case plain, automatic, roundedBorder
    }
    var style: Style
    func body(content: Content) -> some View {
        if style == .roundedBorder {
            content
                .padding(EdgeInsets(top: -4.3, leading: 1.2, bottom: 0, trailing: 1.2))
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(colorScheme == .light ? Color(.systemGray4) :  Color(.systemGray6), lineWidth: 1)
                }
        } else {
            content
        }
    }
}

extension TextEditor {
    func textEditorStyle(_ style: TextEditorStyle.Style) -> some View {
        modifier(TextEditorStyle(style: style))
    }
}
