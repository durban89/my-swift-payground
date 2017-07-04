//: Playground - noun: a place where people can play

import UIKit

func makeArray<Item>(repeating item:Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}

var eArray = makeArray(repeating: "knock", numberOfTimes: 4)
print(eArray)
