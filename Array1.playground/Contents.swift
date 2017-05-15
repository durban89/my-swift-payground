//: Playground - noun: a place where people can play

import UIKit

var a:[String] = ["dog","bird","cat"]
a[0]
a[1]
a.count
a.insert("bird2", at: 1)
a.count
a.append("bird3")
print(a)
a += ["dog1","dog2"]
print(a)

var b = [String]()
print(b)