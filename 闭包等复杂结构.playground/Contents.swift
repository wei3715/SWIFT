//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//普通switch语句
let name = "Jolly"
switch name {
case "周伟伟":
    print("答对")
case "Jolly":
    print("答错")
default:
    print("null")
}
//区间匹配switch语句
let count = 10
switch count {
case 0...5:
    print("count 在0-3之间")
case 5...10:
    print("count 在5-10之间")
default:
    print("都不在")
}

//元祖匹配switch语句
let 坐标 = (2,3)
switch 坐标 {
case (_,0):
    print("在x轴上")
case(0,_):
    print("在y轴上")
case(-2...2,-3...3):
    print("任意值")
default:
    print("怪")
}

//switch值绑,绑定的x，y只能用在case内部（where筛选）
switch 坐标 {
case (let x,0):
    print("x轴上数据==\(x)")
case(0, let y):
    print("y轴上数据==\(y)")
case let(x, y) where (x>0 && y>0):
    print("\(x) \(y)在第一象限")
default:
    print("验证值绑定")
}

//控制转移数据fallthrough
switch 坐标 {
case (let x,0):
    print("x轴上数据==\(x)")
case(0, let y):
    print("y轴上数据==\(y)")
case let(x, y) where (x>0 && y>0):
    print("\(x) \(y)在第一象限")
    fallthrough
default:
    print("验证值绑定") //该条语句也会被执行
}
//标签语句


//闭包
//闭包1
let stuName = {print("学生名字为维女神")}
stuName()

//闭包2(含参数，返回值)
let divide = {(var1: Int, var2: Int) -> Int in
    return var1/var2
}
let result = divide(8,4)


//闭包表达式
let namesArr = ["AT","BT","AY","ZO","KO"]
//func backwards(s1:String,s2:String) -> Bool{
//    return s1>s2
//}
//
//var reversed = namesArr.sorted(by: backwards)
//print(reversed)

//参数名称缩写
//var reversed = namesArr.sorted(by: {$0 > $1})
//print(reversed)

//运算符函数
var reversed = namesArr.sorted(by: >)
print(reversed)

//尾随闭包
func  尾随闭包(closure: () -> Void){
    //函数体部分
}

//枚举
enum WeekDay {
    case Sunday
    case Monday
    case Tuseday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
}

var day = WeekDay.Saturday
day = .Sunday
switch day {
case .Sunday:
    print("周天")
case .Saturday:
    print("周六")
default:
    print("hello")
}


