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