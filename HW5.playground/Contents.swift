//: Playground - noun: a place where people can play

import UIKit

let array = [[0,0,0,0,0,0,0,0],
             [0,1,2,3,4,5,6,7],
             [0,2,4,6,8,10,12,14],
             [0,3,6,9,12,15,18,21],
             [0,4,8,12,16,20,24,28],
             [0,5,10,15,20,25,30,35],
             [0,6,12,18,24,30,36,42],
             [0,7,14,21,28,35,42,49]]

// 1. 算全部格子的總合
var sum1 = 0
for arr in array {
    for i in arr {
        sum1 += i
    }
}
print("1. 算全部格子總和。 Ans:\(sum1)")

// 2. 算基數行的總合
var sum2 = 0
for index in (0...array.count - 1) {
    if index % 2 != 0 {
        for i in array[index] {
            sum2 += i
        }
    }
}
print("2. 算基數行的總合。 Ans:\(sum2)")

// 3. 所有格⼦的總合，除了列數>=⾏數的格⼦
var sum3 = 0
for i in 0...array.count - 1 { //列
    for j in 0...array[i].count - 1 { //行
        if i < j {
            sum3 += array[i][j]
        }
    }
}
print("3. 所有格⼦的總合，除了列數>=⾏數的格⼦。 Ans:\(sum3)")
