//: Playground - noun: a place where people can play

import UIKit

func greeting(person:String, day:String) -> String {
    return "Hello \(person), today is \(day)."
}

greeting(person: "durban", day: "Tuesday")

// 调用函数的时候可以不用写参数名称
func greet(_ person:String, _ day: String) -> String {
    return "Hello \(person), today is \(day)"
}

greet("durban", "Thusday")

func greet2(_ person: String, on day:String) -> String{
    return "Hello \(person), today is \(day)"
}

greet2("durban",on: "Thusday")

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        
        sum += score
    }
    
    return (min, max, sum)
    
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.min)
print(statistics.max)
print(statistics.sum)

func nestedFunc() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    
    add()
    return y
}

nestedFunc()

// return func value
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number:Int) -> Int {
        return 1 + number
    }
    
    return addOne
}

let incrementer = makeIncrementer()
incrementer(2)


// another function as one of its arguments
func hasAnyMatches(list:[Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

var newNumbers = numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})
print(newNumbers)

let mappedNumbers = numbers.map({ number in 3 * number})
print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
