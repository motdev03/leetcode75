//
//  ContentView.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 20/01/24.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: LeetcodePlayDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

#Preview {
    ContentView(document: .constant(LeetcodePlayDocument()))
}
