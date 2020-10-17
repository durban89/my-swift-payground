import UIKit
import Foundation

var str = "Hello, playground"


protocol Animal {
    func eat() -> String
}

class Cat: Animal {
    func eat() -> String {
        return "cat eat"
    }
}

var cat = Cat()
print(cat.eat())
