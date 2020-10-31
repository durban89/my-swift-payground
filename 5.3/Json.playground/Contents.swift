import UIKit

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

struct EmojiArt: Codable {
    
    var emojis = [Emoji]()
    
    struct Emoji: Identifiable, Codable {
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
    var json: Data? {
        return try? JSONEncoder().encode(self)
    }
    
    private var uniqueEmojiID = 0
    mutating func addEmoji(text: String, x: Int, y: Int, size: Int) {
        uniqueEmojiID += 1
        emojis.append(Emoji(text: text, x: x, y: y, size: size, id: uniqueEmojiID))
    }
}

class EmojiArtDocument: ObservableObject {
    @Published private var emojiArt: EmojiArt = EmojiArt() {
        didSet {
            print("json = \(String(describing: emojiArt.json ?? nil) )")
        }
        
        willSet {
            objectWillChange.send()
        }
    }
    
}
