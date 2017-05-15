//: Playground - noun: a place where people can play

import UIKit

class Person {
    var age = 20
    var name = "Durban"
    
    init(_ name:String, _ age:Int){
        self.name = name
        self.age = age
    }
    
    init(){
    
    }
}

var a = Person("Durban2",30)
print(a.name)
print(a.age)

var b = Person()
print(b.name)
print(b.age)