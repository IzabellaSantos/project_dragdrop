//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Izabella Julia dos Santos on 20/06/22.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    let document = EmojiArtDocument()
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
        }
    }
}
