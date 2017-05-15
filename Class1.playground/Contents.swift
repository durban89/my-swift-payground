//: Playground - noun: a place where people can play

import UIKit

class Person {
    var name:String = "Durban"
    
    init() {
        sayHello()
    }
    
    func sayHello(){
        print("say Hello")
    }
    
    func sayName(){
        print(name)
    }
}

var person = Person()
person.sayHello()
person.name="Sakura"
person.name
person.sayName()

var secondPerson = Person()
secondPerson.sayHello()
secondPerson.name = "Durban"
secondPerson.name
secondPerson.sayName()

class Superman: Person{
    override init() {
        super.init()
        super.name="Superman initial name"
    }
    
    func sayFly(){
        print("Flying")
    }
    
    override func sayHello() {
        print("Superman say Hello")
    }
}

var s = Superman()
s.sayName()
s.sayHello()
s.sayFly()
