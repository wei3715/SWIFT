//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//含参
func zww(name:String) -> String{
    return (name)
}

print(zww(name: "Jolly"))

func zwwDetail(name:String,age:Int) -> String {
    return (name + String(age))
}
print(zwwDetail(name: "Jolly", age: 18))

func zwwCount(no:Int,age:Int) -> Int {
    return (no + age)
}
print(zwwCount(no:30, age: 18))

//不含参数
func zwwNothing() ->String {
    return "一无所有"
}
print(zwwNothing())

//没有返回值
func zwwNoReturn() {
    print("不返回参数")
}
zwwNoReturn()


//返回元祖类型

func minMax (arr: [Int]) ->(min:Int,max:Int)?{
    var currentMin = arr[0]
    var currentMax = arr[0]
    
    for itme in arr[0..<arr.count] {
        if (itme < currentMin) {
            currentMin = itme
        }
        if (itme > currentMax) {
            currentMax = itme
        }
    }
    return (currentMin,currentMax)
}
let bounds = minMax(arr: [39,23,12,45,89])!
print("数组遍历最大\(bounds.min) 值最小值\(bounds.max)")

//局部参数
func param (param0: Int) -> Int{
    print("传递的函数局部参数\(param0)")
    return param0
}

param(param0: 40)

func beHappy (name:String) {
    print("\(name) happy everyday!fogget the terrible thing")
}

beHappy(name: "Jolly")

//外部参数
func outArg (firstArg a: Int, secondArg b: Int) -> Int{
   return a+b
}
outArg(firstArg: 3, secondArg: 4)

//可变参数
func vari<N> (nums: N...){
    for i in nums {
        print(i)
    }
}
vari(nums: 1,3,5)
vari(nums: 1.2,3.6,7.9)
vari(nums: "happy", "every", "day")

//常量,变量及I/O参数
func swapTwoInts(a: inout Int, b: inout Int){
    let tempNum = a
    a = b
    b = tempNum
}
var x = 1
var y = 2
swap(&x, &y)
print("交换之后的数据\(x) \(y))")

//使用函数类型
func sum (a: Int, b:Int) -> Int{
    return a + b
}
var funcVari:(Int, Int) -> Int = sum
print("输出结果为\(funcVari(3,4))")

//函数类型作为参数类型、函数类型作为返回类型
//作为参数
func 复杂函数参数(funcVari: (Int,Int) -> Int, a: Int, b: Int) {
     print("返回结果为\(funcVari(a,b))")
}

//作为参数类型
复杂函数参数(funcVari: sum, a: 5, b: 6)

//自写
//Jolly函数1 函数类型为:(Int,String) -> String
func Jolly函数1 (age:Int, name: String) -> String {
    return name + "芳龄为：" + String(age)
}
Jolly函数1(age: 18, name: "Jolly")

//使用函数类型赋值：Jolly函数1对应字符串变量 可以代替 Jolly函数1 使用
var Jolly函数1对应字符串变量:(Int,String) -> String = Jolly函数1
print("使用函数类型赋值的字符串==\(Jolly函数1对应字符串变量(20,"Zoe"))")

var str00 = Jolly函数1(age: 28, name: "Jolly")
print("字符串值==\(str00)")


//函数类型作为参数类型
func Jolly函数2(Jolly函数1对应字符串变量: (Int,String) -> String, age00: Int, name00: String){
    print("Jolly函数2 函数值\(Jolly函数1对应字符串变量(age00,name00))")
}

Jolly函数2(Jolly函数1对应字符串变量:Jolly函数1 , age00: 20, name00: "lily")

//函数嵌套 :返回值类型是函数类型（无参，返回值为Int的函数类型: ()）
func 嵌套函数 (外部参数 total: Int) -> () -> Int {
    var currentNum = 5
    func 内嵌函数 () -> Int {
        currentNum -= total
        return currentNum
    }
    return 内嵌函数
}
let ee = 嵌套函数(外部参数: 4)
//不是很明白
print(ee())
