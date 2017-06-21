//: Playground - noun: a place where people can play

import UIKit

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A Shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
print(shapeDescription)