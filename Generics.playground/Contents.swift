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

enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}

var possibleInteger: OptionalValue<Int> = .none
print(possibleInteger)
possibleInteger = .some(100)
print(possibleInteger)

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs:T, _ rhs: U) -> Bool
    where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
        
        for lhsItem in lhs {
            for rhsItem in rhs {
                if lhsItem == rhsItem {
                    return true
                }
            }
        }
        
        return false
}

anyCommonElements([1,2,3], [3])