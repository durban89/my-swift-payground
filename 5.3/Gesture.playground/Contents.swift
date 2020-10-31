import UIKit

var str = "Hello, playground"
//UserDefaults
//Gesture
//storing data permently
//data types in UserDefaults
//
//property lists
//any type
//using UserDefaults
//Retriving Data
//Storing Data

struct EmojiArt {
    
    var emojis = [Emoji]()
    
    struct Emoji: Identifiable {
        let text: String
        var x: Int
        var y: Int
        var size: Int
        let id: Int
        
        fileprivate init(text: String, x: Int, y: Int, size: Int, id: Int) {
            self.text = text
            self.x = x
            self.y = y
            self.size = size
            self.id = id
        }
    }
}

class EmojiArtDocument: ObservableObject {
    private(set) var emojiArt: EmojiArt
}
