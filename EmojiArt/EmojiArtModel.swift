//
//  EmojiArtModel.swift
//  EmojiArt
//
//  Created by Izabella Julia dos Santos on 20/06/22.
//

import Foundation

struct EmojiArtModel {
    var background = Background.blank
    var emojis = [Emoji]()
    private var uniqueEmojiId = 0
    
    struct Emoji: Identifiable, Hashable {
        let text: String
        let id: Int
        var x: Int // offset from the center
        var y: Int // offset from the center
        var size: Int
        
        fileprivate init(text: String, id: Int, x: Int, y: Int, size: Int) {
            self.text = text
            self.id = id
            self.x = x
            self.y = y
            self.size = size
        }
    }
    
    init() { }
    
    mutating func addEmoji(_ text: String, at location: (x: Int, y: Int), size: Int) {
        uniqueEmojiId += 1
        emojis.append(Emoji(text: text, id: uniqueEmojiId, x: location.x, y: location.y, size: size))
    }
}
