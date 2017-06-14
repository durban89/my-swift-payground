//: Playground - noun: a place where people can play

import UIKit

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0

for score in individualScores{
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)


var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "Durban.zhang"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let nickName: String? = nil
let fullName: String = "Durban.zhang"
let informalGreeting = "Hi, \(nickName ?? fullName)"

// switch
let vegetable = "cucumber"
switch vegetable {
case "celery":
    print("Add some rassins and make ants on a log")
case "cucumber", "watercress":
    print("That would make a good tea sandwich")
case let x where x.hasSuffix("paper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

// for in
let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square":[1,4,9,16,25]
]

var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

print(largest)