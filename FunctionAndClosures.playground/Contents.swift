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