import UIKit

var str = "Hello, playground"

var myVariable = 42
myVariable = 50
let myConstant = 30
//myConstant = 31 // cant not assign to value

let implicitInteger = 70
let implicitDouble = 70.0
let implicit: Double = 70
print(implicit)

// Animate

// UIImage / Image
// UIColor / Color
// // Multithreading
// Threads
// Queues
// Queues and Closures
// Main Queue
// Background Queues
// GCD Grand Central Dispatch

// Creating Queue
/*
DispatchQueue.main
DispatchQueue.global(qos: Qos) // no ui queue
qos.userInteractive
    .userInitiated
    .utility.background

//

let queue - DispatchQueue.main
queue.sync{}
queue.async{} // never call .sync in UI code
*/


//Nesting
//DispatchQueue(global: .userInitiated).async{}
//
// Asynchronous API
//DispatchQueue.main.sync {
//    <#code#>
//}

import Foundation

struct EmojiArt {
    var backgroundUrl: URL?
    var emojis: [Emoji] = [Emoji]()
    
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
    
    private var uniqueEmojiID = 0
    
    mutating func addEmoji(_ text: String, x: Int, y: Int, size: Int) {
        uniqueEmojiID += 1
        emojis.append(Emoji(text: text, x: x, y: y, size: size, id: uniqueEmojiID))
    }
}

class EmojiArtDocument: ObservableObject {
    static let palatte: String = "😄🚄🎈🌞🌛"
    
    @Published private var emojiArt: EmojiArt = EmojiArt()
    
    func addEmoji(text: String, at location: CGPoint, size: CGFloat, id: Int) {
        emojiArt.addEmoji(text, x: Int(location.x), y: Int(location.y), size: Int(size))
    }
    
    func moveEmoji(_ emoji: EmojiArt.Emoji, by offset: CGSize) {
        if let index = emojiArt.emojis.firstIndex(matching: emoji) {
            emojiArt.emojis[index].x += Int(offset.width)
            emojiArt.emojis[index].y += Int(offset.height)
        }
    }
    
    func scaleEmoji(_ emoji: EmojiArt.Emoji, by scale: CGFloat) {
        if let index = emojiArt.emojis.firstIndex(matching: emoji) {
            emojiArt.emojis[index].size = Int((scale * CGFloat(emojiArt.emojis[index].size)).rounded(.toNearestOrEven))
        }
    }
    
    func setBackgroundUrl(_ url: URL?) {
        emojiArt.backgroundUrl = url?.imageUrl
    }
}


extension Collection where Element: Identifiable {
    func firstIndex(matching element: Element) -> Self.Index? {
        firstIndex(where: { $0.id == element.id })
    }
    
    func contains(matching element: Element) -> Bool {
        self.contains(where: { $0.id == element.id })
    }
}

extension URL {
    var imageUrl: URL {
        for query in query?.components(separatedBy: "&") ?? [] {
            let queryComponents = query.components(separatedBy: "=")
            if queryComponents.count == 2 {
                if queryComponents[0] == "imgurl", let url = URL(string: queryComponents[1].removingPercentEncoding ?? "") {
                    return url
                }
            }
        }
        
        return self.baseURL ?? self
        
    }
}

import SwiftUI


struct EmojiArtDocumentView: View {
    @ObservedObject var document: EmojiArtDocument
    
    var body: some View {
        VStack{
            ScrollView(.horizontal) {
                HStack {
                    ForEach(EmojiArtDocument.palatte.map { String($0) }, id: \.self) { emoji in
                        Text(emoji)
                            .font(Font.system(size: self.defaultFontSize))
                    }
                }
            }.padding(.horizontal)
            Rectangle().foregroundColor(Color.yellow)
                .edgesIgnoringSafeArea([.horizontal, .bottom])
        }
    }
    
    private let defaultFontSize: CGFloat = 40;
}

