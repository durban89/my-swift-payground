import UIKit

var str = "Hello, playground"

var myVariable = 42
myVariable = 50
let myConstant = 30
//myConstant = 31 // cant not assign to value

let implicitInteger = 70
let implicitDouble = 70.0
let implicit: Double = 70
print(implicit)

// Animate

// UIImage / Image
// UIColor / Color
// // Multithreading
// Threads
// Queues
// Queues and Closures
// Main Queue
// Background Queues
// GCD Grand Central Dispatch

// Creating Queue
/*
DispatchQueue.main
DispatchQueue.global(qos: Qos) // no ui queue
qos.userInteractive
    .userInitiated
    .utility.background

//

let queue - DispatchQueue.main
queue.sync{}
queue.async{} // never call .sync in UI code
*/


//Nesting
//DispatchQueue(global: .userInitiated).async{}
//
// Asynchronous API
//DispatchQueue.main.sync {
//    <#code#>
//}
