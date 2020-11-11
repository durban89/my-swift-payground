import UIKit

// flatMap/compactMap （swift 5.3）的使用
// flatMap/compactMap处理返回后的数组不存在nil，同时它会把Optional解包

// 通常Map中过滤掉nil或者空的数据，实现方式如下
let colors = ["red", "yellow", "green", ""]
let colorsOfMap = colors.map { item -> Int? in
    let length = item.count
    guard length > 0 else {
        return nil
    }
    
    return length
}

print(colorsOfMap)

//let colorsOfFlatMap = colors.flatMap { item ->Int? in
//    let length = item.count
//    guard length > 0 else {
//        return nil
//    }
//
//    return length
//}

//'flatMap' is deprecated Please use compactMap(_:)

let colorsOfFlatMap = colors.compactMap { item ->Int? in
    let length = item.count
    guard length > 0 else {
        return nil
    }
    
    return length
}

print(colorsOfFlatMap)

// 打开数组
// compactMap能把（二维、N维）数组一同打开变成一个新的数组

let array = [[1,2,3],[4,5,6],[7,8,9]]

// 对比
let arr1 = array.map { $0 }
print(arr1)

let arr2 = array.flatMap { $0 }
print(arr2)

// 合并数组
// compactMap能把不同的数组合并为一个数组，合并后的数组的个数是要合并两个数组个数的乘积
let animals = ["cat", "dog", "pig"]
let counts = [1,2,3]

let newArray = counts.flatMap { count in
    animals.map({ animal in
        return animal + "\(count)"
    })
}

print(newArray)


// filter
// 过滤，可以对数组中的元素按照某种规则进行一次过滤。
let numbers = [1, 3, 5, 7, 9]
let filterNumbers = numbers.filter { $0 < 5 }
print(filterNumbers)

// reduce
// 计算，可以对数组的元素进行计算
let animals1 = ["Dog", "Cat", "Pig"]
let string = animals1.reduce("Dog", {
    // $0: result, $1: 数组的值
    return $0 == "Cat" ? $1 : $0 + "," + $1
})
print(string)
