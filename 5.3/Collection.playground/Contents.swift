import UIKit

// Map （swift 5.3）的使用

// 对集合类型中的每一个元素做一次处理，转换为新数组

// ### 数组系列如下

// 案例1 - 遍历每个元素
let colors = ["red", "yellow", "green", "blue"]
let counts = colors.map { (color: String) -> Int in
    return color.count
}

print(counts)
// 结果是 [3,6,5,4]

// 案例2 - 更加简单的方法
let counts1 = colors.map { $0.count }
print(counts1)

// 结果也是 [3,6,5,4]

// 案例3 - 转换为对象数组（请问下转换为对象数组干啥用）
class Color {
    var name: String
    init(name: String) {
        self.name = name
    }
}

let colorsObj = colors.map { return Color(name: $0) }

for obj in colorsObj {
    print(obj.name)
}

//red
//yellow
//green
//blue


//集合系列
//
//字典系列
