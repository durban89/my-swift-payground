//: Playground - noun: a place where people can play

import UIKit

class Person{
    var age = 25
    var name = "durban"
    
    func updateAgeAndName(updateAge:Int, updateName:String){
        age = updateAge
        name = updateName
    }
    
    func increaseAge(increaseAge:Int) -> Int{
        age += increaseAge
        return age
    }
    
    class func getAverageAge() -> Int{
        return 50
    }
    
}

var a = Person()
print(a.age)
print(a.name)
a.updateAgeAndName(updateAge: 33, updateName: "durban.zhang")
print(a.age)
print(a.name)
print(a.increaseAge(increaseAge:1))
print(a.age)
print(Person.getAverageAge())