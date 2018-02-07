//
//  main.swift
//  PlaySwift1
//
//  Created by Mark on 2018/1/30.
//  Copyright © 2018年 Tsinghua University. All rights reserved.
//
import CoreFoundation
import Foundation
//println()
print("Hello, World!")
print("Hello, World!")


var myVariable = 42
myVariable = 50
let myConstant = 42


let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
let explicitFloat: Float = 4
print(explicitFloat)


let label = "The width is "
let width = 94
let widthLabel = label + String(width) // Error不能将String和Int计算
print(widthLabel)


let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
let calculateFloat = (3.3 + 4.4)
print("Hello Mark. Good \(calculateFloat)")


var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"


// let emptyArray = String[]()
let emptyArray = Array<String>()
let emptyDictionary = Dictionary<String, Float>()
print(emptyArray.count)
print(emptyDictionary.count)


let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {

    if score>50
    {
        teamScore += 3
    }
    else
    {
        teamScore += 1
    }
}
print("Team score is \(teamScore)")



var optionalString: String? = "Hello"
if optionalString == nil{ print("True")}

var optionalName: String? = "Mark Appleseed"
var greeting = "Hello!"
optionalName = nil

// 可选值是nil，条件会判断为false，大括号中的代码会被跳过。
// 如果不是nil，会将值赋给let后面的常量，这样代码块中就可以使用这个值
if let name = optionalName //等价optionalName != nil 并把值符给name
{
    // if optionalName != nil
    // name = optionalName
    greeting = "Hello, \(name)"
    print(greeting)
}
else
{
    greeting = "Hello, Mark"
    // 当名字空的时候
    print(greeting)
}

// 匹配到的子句之后，程序会退出switch语句，并不会继续向下运行，所以不需要在每个子句结尾写break
let vegetable = "red pepper"
switch vegetable
{
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
    print(vegetableComment)
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
    print(vegetableComment)
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
    print(vegetableComment)
default:    //不可缺少的default  must exhaustive
    let vegetableComment = "Everything tastes good in soup."
    print(vegetableComment)
}


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestCategory = ""
for (kind, numbers) in interestingNumbers
{
    print(kind)
    for number in numbers
    {
        if number > largest
        {
            largest = number
            largestCategory = kind
        }
    }
}
print("largest number = \(largest) and Category is \(largestCategory)")

// while循环测试
var n = 2
while n < 100
{
    n = n * 2
}

var m = 2
//do while 不能在新版本中使用了
repeat
{
    m = m * 2
} while m < 100
// m和n都得到128


var firstForLoop = 0
for i in 0...3
{
    firstForLoop += i
}
print(firstForLoop)

// swift 3中就没有C语言风格的循环啦
//var secondForLoop = 0
//for var i=0; i<3; ++i
//{
//    secondForLoop += 1
//}

// 函数的使用 打招呼
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
print(greet(name: "Mark", day: "Wednesday 20180131"))

func greet(name: String, launch: String) -> String {
    return "Hello \(name), today launch is \(launch)."
}


func getGasPrices() -> (Double, Double, Double) {
    return (3.59, 3.69, 3.79)
}
print(getGasPrices())


// 可变参数的使用 累加传入的所有数字
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers
    {
        sum += number
    }
    
    return sum
}
print(sumOf(numbers:42, 597, 12))
print(sumOf())

func averageOf(numbers: Int...) -> Int {
    var sum = 0
    let count = numbers.count
    
    for num in numbers
    {
        sum += num
    }
    
    return sum/count
}
// 会去掉小数部分的
print(averageOf(numbers: 11, 22, 33, 44))


// 函数的使用 一等公民 重要
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

print(returnFifteen())


// Swift2.1这里就改了语法 参数列表要用小括号
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(7))



// WARNING 参数记得要加个小括号
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list
    {
        //遍历数组
        if condition(item)
        {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10 // 至少又一个小于10才返回真
}

var numbers = [20, 19, 7, 12]
var result = hasAnyMatches(list: numbers, condition: lessThanTen)
print(result)


// 闭包的使用
print(numbers.map({
    (number: Int) -> Int in
    var result = 3 * number
    if number%2 != 0
    { result = 0}
    return result
}))

print(numbers) //闭包返回计算结果 但是不影响变量以前的值
print( numbers.map({ number in 3 * number })) // 省略很多的写法 默认值就是返回值

// 你可以获取参数的数量 而不需要名字了
// A closure passed as the last argument to a function can appear immediately after the parentheses.
// Swift1中这种写法已经不能用了sort([1, 5, 3, 12, 2]) {$0 > $1}
numbers.sort{$0 > $1} //$0$1都是通配符 用来placeholder的
print(numbers) // 排序函数可以改变这个值





// Class的使用
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
print(shapeDescription)
print(shape.name)


//使用deinit创建一个析构函数
func testDEINIT()
{
let namedShape = NamedShape(name: "Hello is my name")
namedShape.numberOfSides = 3
}

testDEINIT()
// 函数执行完 回收局部变量

let test = Square(sideLength: 5.2, name: "my test square")
print(test.area()) // 计算面积边乘边
print(test.simpleDescription())



class Circle: NamedShape {
    var r: Double // 半径
    
    init(rLength: Double, name: String) {
        //初始化自己的半径
        self.r = rLength
        
        // 先初始化自己再调用super
        super.init(name: name)
        
        self.numberOfSides = 0 // or infinity
    }
    
    
    
    func area(PI_Value: Double) -> Double {
        return PI_Value*(r*r)
    }
    
    override func simpleDescription() -> String {
        return "A circle length: \(2*r*Double.pi)."
    }
}

print("M_PI is \(Double.pi) --\\(M_PI)")
let c1 = Circle(rLength: 1, name: "NewCircle Object")
print(c1.area(PI_Value: Double.pi))
print(c1.simpleDescription())


class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    // 周长
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triagle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.sideLength)
print(triangle.perimeter)
triangle.perimeter = 9.9

// print(tan(M_PI/4))  1.0这个常量过期了哦

// Warning 1设置子类声明的属性值 2调用父类的构造器
// 3改变父类定义的属性值。其他的工作比如调用方法、getters和setters也可以在这个阶段完成。

//如果你不需要计算属性但是需要在设置一个新值之前运行一些代码
// will set 和didSet
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
            NSLog("will Set")
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
            NSLog("will Set triangle")
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
//var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
//print(triangleAndSquare.square.sideLength)
//print(triangleAndSquare.triangle.sideLength)
//triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
//print(triangleAndSquare.triangle.sideLength) //主动调用三角形的willSet方法



class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes times: Int) {
        count += amount * times
    }
}
var counter = Counter()
counter.incrementBy(amount: 2, numberOfTimes: 7)



// 如果?之前的值是nil，?后面的东西都会被忽略，并且整个表达式返回nil
// 否则 之后的东西都会被运行。在这两种情况下，整个表达式的值也是一个可选值。
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength//optionalSquare?.sideLength
print("\(sideLength!)") // 不加上感叹号就会认为可选型Optional(2.5)


// 枚举的使用
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
            //return String(self.toRaw()) Swift1中改了语法
        }
    }
}

//let aceRawValue = ace.toRaw()
// ace.rawValue()
let ace = Rank.Ace
let aceRawValue = ace.rawValue
print(aceRawValue)
// 所以你只需要设置第一个原始值。剩下的原始值会按照顺序赋值。
// 你也可以使用字符串或者浮点数作为枚举的原始值。
// From Raw 修改成初始化方法来创建enum

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
    print("可选性fuzhi 给convertedRank的== \(convertedRank)")
    print(threeDescription)
}

// 枚举的成员值是实际值，并不是原始值的另一种表达方法。实际上，如果原始值没有意义，你不需要设置
enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        switch self {
        case .Spades:
            return "black"
        case .Hearts:
            return "red"
        case .Diamonds:
            return "red"
        case .Clubs:
            return "black"
        }
    }
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()
// 有两种方式可以引用Hearts成员：给hearts常量赋值时，枚举成员Suit.Hearts需要用全名来引用，因为常量没有显式指定类型
// 在switch里，枚举成员使用缩写.Hearts来引用，因为self的值已经知道是一个suit。已知变量类型的情况下你可以使用缩写



// 使用struct来创建一个结构体。结构体和类有很多相同的地方，比如方法和构造器。
// 它们结构体之间最大的一个区别就是 结构体是传值，类是传引用。
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
// 练习：给Card添加一个方法，创建一副完整的扑克牌并把每张牌的rank和suit对应起来。

// 一个枚举成员的实例可以有实例值。
// 相同枚举成员的实例可以有不同的值。创建实例的时候传入值即可。

// 实例值和原始值是不同的：
// 枚举成员的原始值对于所有实例都是相同的，而且你是在定义枚举的时候设置原始值。
// 例如，考虑从服务器获取日出和日落的时间。服务器会返回正常结果或者错误信息。

