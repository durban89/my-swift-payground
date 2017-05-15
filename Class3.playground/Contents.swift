//: Playground - noun: a place where people can play

import UIKit

class Person {
    var age = 20
    var name = "Durban"
    
    var address:String?
    var phone:String?
    
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

a.address = "shanghai"

if let optionalAddress = a.address{
    print("where shanghai")
}
if a.address != nil{
    print("where \(String(describing: a.address))")
}

if a.address == nil {
    print("no address")
}

var b = Person()
print(b.name)
print(b.age)

