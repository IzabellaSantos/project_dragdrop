//
//  EmojiArtBackground.swift
//  EmojiArt
//
//  Created by Izabella Julia dos Santos on 20/06/22.
//

import Foundation

extension EmojiArtModel {
    
    enum Background {
        case blank
        case url(URL)
        case imageData(Data)
        
        var url: URL? {
            switch self {
                case .url(let url): return url
                default: return nil
            }
        }
        
        var imageData: Data? {
            switch self {
                case .imageData(let data): return data
                default: return nil
            }
        }
    }
}
