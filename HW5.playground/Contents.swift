//: Playground - noun: a place where people can play

import UIKit

/* 算格子 */
let array = [[0,0,0,0,0,0,0,0],
             [0,1,2,3,4,5,6,7],
             [0,2,4,6,8,10,12,14],
             [0,3,6,9,12,15,18,21],
             [0,4,8,12,16,20,24,28],
             [0,5,10,15,20,25,30,35],
             [0,6,12,18,24,30,36,42],
             [0,7,14,21,28,35,42,49]]

// 1-1. 算全部格子的總合
var sum1 = 0
for arr in array {
    for i in arr {
        sum1 += i
    }
}
//print("1-1. 算全部格子總和。 Ans:\(sum1)")

// 1-2. 算奇數行的總合
var sum2 = 0
for index in 0...array.count - 1 {
    if index % 2 != 0 {
        for i in array[index] {
            sum2 += i
        }
    }
}
//print("1-2. 算奇數行的總合。 Ans:\(sum2)")

// 1-3. 所有格⼦的總合，除了列數>=⾏數的格⼦
var sum3 = 0
for i in 0...array.count - 1 { //列
    for j in 0...array[i].count - 1 { //行
        if i < j {
            sum3 += array[i][j]
        }
    }
}
//print("1-3. 所有格⼦的總合，除了列數>=⾏數的格⼦。 Ans:\(sum3)")

// 1-4. 奇數行的數字總合, 定義function，接受2個參數，分別代表行數和列數
func sumUpTheOddRows(row: Int, column: Int) -> Int {
    var sum = 0
    for i in 0...row - 1 {
        if i % 2 != 0 {
            for j in 0...column - 1 {
                sum += array[i][j]
            }
        }
    }
    return sum
}
//print("1-4. Ans:\(sumUpTheOddRows(row: 8, column: 8))")

//1-5. 所有格子的總合，除了列數>=行數的格子, 定義function，接受2個參數，分別代表行數和列數
func sumUpTheRows(row: Int, column: Int) -> Int {
    var sum = 0
    for i in 0...row - 1 {
        for j in 0...column - 1 {
            if i < j {
                sum += array[i][j]
            }
        }
    }
    return sum
}
//print("1-5. Ans:\(sumUpTheRows(row: 8, column: 8))")

/* 定義function，接受3個參數，起始值，最大值和決定數字倍數的number */

// 2-1. 只包含5的倍數
func calculate1(min: Int, max: Int, multiple: Int) -> Int {
    var sum = 0
    for i in min...max {
        if i % 5 == 0 {
            sum += i
        }
    }
    return sum
}

let result1 = calculate1(min: 3, max: 98, multiple: 5)
//print("2-1. Ans:\(result1)")

// 2.不包含5的倍數
func calculate2(min: Int, max: Int, multiple: Int) -> Int {
    var sum = 0
    for i in min...max {
        if i % 5 != 0 {
            sum += i
        }
    }
    return sum
}

let result2 = calculate2(min: 3, max: 11, multiple: 5)
print("2-2. Ans:\(result2)")


