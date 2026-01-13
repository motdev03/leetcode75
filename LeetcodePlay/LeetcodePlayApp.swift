//
//  LeetcodePlayApp.swift
//  LeetcodePlay
//
//  Created by Tom Manuel on 20/01/24.
//

import SwiftUI

@main
struct LeetcodePlayApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: LeetcodePlayDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
