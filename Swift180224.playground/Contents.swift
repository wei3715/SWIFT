//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)

//这是一行注释

/*这是一条可以换行的注释
 可以跨越多行
 /*嵌套第二个注释*/
 */

let a = 1 + 2
for x in 0...10{
    print("\(x) ", terminator:"")
}
print()

typealias newname = Int
let aa: newname = 10

var Jolly = "女生"
var 长大后Jolly  = "超人"
print("\(Jolly)长大后变成\(长大后Jolly)")


var 可选变量: Int?
可选变量 = 43
print(可选变量)

var 可选变量1:String? = "可以"
if 可选变量1 != nil {
   print(可选变量1!)
} else {
    print("可选变量1 为空字符串")
}

var 可选变量3:String! = "哈哈"
if 可选变量3 != nil {
    print(可选变量3)
} else {
    print("可选变量3 为空字符串")
}

//可选绑定
var myString:String?
myString = "可选绑定"
if let yourString = myString{
    print("可选字符串的值为\(yourString)")
} else {
    print("可选字符串为空");
}

//算数运算符
var AA = 10
var BB = 20

print("AA+BB = \(AA + BB)")
print("AA-BB = \(AA - BB)")
print("AA*BB = \(AA * BB)")
print("AA/BB = \(AA / BB)")
print("AA%BB = \(AA % BB)")

//比较运算符
print("AA==BB = \(AA == BB)")
print("AA>=BB = \(AA >= BB)")
print("AA<=BB = \(AA <= BB)")
print("AA!=BB = \(AA != BB)")
print("AA>BB = \(AA > BB)")
print("AA<BB = \(AA < BB)")

//逻辑运算符
var CC = false
var DD = true
print("CC&&DD = \(CC && DD)")
print("CC||DD = \(CC || DD)")
print("!CC = \(!CC)")
print("!DD = \(!DD)")

//位运算符
var A = 60  // 二进制为 0011 1100
var B = 13 // 二进制为 0000 1101
print("A&B 结果为：\(A&B)")
print("A|B 结果为：\(A|B)")
print("A^B 结果为：\(A^B)")
print("~A 结果为：\(~A)")

 //区间运算符 - for in循环
for x in 1...5{
    print("\(x) * 5 = \(x * 5)")
}

for x in 1..<5{
    print("\(x) * 5 = \(x * 5)")
}



//创建字符串
//String 实例化
var ss = String("hello 2018 19")
//var ssA = ""
var ssA = String()
if ssA.isEmpty {
    print("ssA是空字符串")
} else {
   print("不为空")
}

var  ssB = "军港的夜"
print("拼接后str == \(ss + ssB)")
print("拼接后字符串的长度==\( (ss + ssB).characters.count )")
print("字符串判断结果\(ss == ssB)")

for ch in ss.characters{
    print("ch==\(ch)")
}

for code in ss.utf8{
    print("utf8 code ==\(code)")
}

for code1 in ss.utf16{
    print("utf16 code = \(code1)")
}

print("为空否 == \(ssA.isEmpty),\n是否有前缀he=\(ss.hasPrefix("he")),\n是否后缀19=\(ss.hasPrefix("19")),\n长度==\(ss.characters.count)")

//分隔
let strArr = ss.characters.split{$0 == " "}.map(String.init)
strArr[0]


//数组
var someInts = [Int](repeating:3, count:3)

var someIntEm = [Int]()
print("数组是否为空==\(someIntEm.isEmpty)")

var someIntsArr = [10,20,30]
someIntsArr += [89]
someIntsArr.append(23)

for item in someIntsArr{
    print("数组元素== \(item)")
}
var someIntS = someIntsArr + someInts
print("数组元素个数==\(someIntS.count)")




//字典
var dicA:[Int:String] = [1:"one",2:"two",3:"three"]
print("字典键值对的个数==\(dicA.count)")
var dicB = [Int:String]()
print("dicB是否为空==\(dicB.isEmpty)")
var key1 = dicA[1]
var key2 = dicA[2]

//修改字典
var oldVar = dicA.updateValue("new one", forKey: 1)
print("key = 1 的value==\(oldVar)")
dicA
key1 = dicA[1]

//移除元素
var removeValue = dicA.removeValue(forKey: 2)
dicA
//dicA[3] = nil
//dicA

for (key,value) in dicA {
    print("key = \(key),value = \(value)")
}

for (key,value) in dicA.enumerated(){
     print("key = \(key),value = \(value)")
}

let keys = [Int](dicA.keys)
let values = [String](dicA.values)
