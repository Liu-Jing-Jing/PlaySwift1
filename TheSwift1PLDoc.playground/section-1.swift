// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// print("Hello World")
// println("\tline") // println和不同print函数，print不自动换行的函数

// 疑问：Swift刚发布时就有！这个语法吗？
// var m:UIView = UIView()
// var x = m as! UIlabel
/*
var contentView = UIView(frame: CGRectMake(0, 0, 640, 960));
contentView.backgroundColor = UIColor.greenColor()

var label = UILabel()
label.frame = CGRectMake(0, 0, 105, 40)
label.center = contentView.center
label.backgroundColor = UIColor.grayColor()
label.textColor = UIColor.whiteColor()
label.text = "Hello, World!"
contentView.addSubview(label);
 */

var myVariable = 42
let exercise:Float = 4
let exercise1:Double = 4

// 报错，类型要求安全
// var testDouble:Double = exercise;


let label = "The width is"
let width = 94
let widthLabel = label + String(width)


let apples = 3
let appleSummary = "I have \(apples) apples"



// 集合部分
// let emptyArray = String[]()
var emptyDictionary = Dictionary<String, Float>()
// what's mean  <String, Float>
var testDictionary = ["one":1,
                      "two":2]



//控制流
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores
{
    if(score > 50)
    {
        teamScore += 3
    }
    else
    {
        teamScore += 1
    }
}
println(teamScore)


//Optional
var optionalString:String? = "Hello"
var testStr = "Hello"

optionalString = nil

var optionalName:String?="John Applessed"
optionalName = nil // test
var greeting = "Hello!"
if let name = optionalName
{
    greeting = "Hello, \(name)"
}
else if optionalName == nil
{
    greeting
}



// switch
switch 2
{
    case 1:
         println("haha")
    case 2:
        println("haha")
    default:
         println("haha")
}


let interestingNumbers = [
                         "Prime":[2, 3, 5, 7, 11, 13],
                         "Fibonacci":[1, 1, 2, 3, 5, 8],
                         "Square":[1, 4, 9, 16, 25]
                        ]

var largest = 0
// kind is String
// numbers is a IntArray
for(kind, numbers) in interestingNumbers
{
    for number in numbers
    {
        if number > largest
        {
            largest = number
            
        }
    }
}

largest


// while loop
var n = 2
while n < 100
{
    n = n * 2
}


var m = 2
do
{
    m = m * 2
}while m < 100


var firstForLoop = 0
for i in 0 ..< 3
{
    firstForLoop += i
}

var secondForLoop = 0
for var i = 0; i<3;i++
{
    secondForLoop += 1
    // i = 3
}

// Tuple

func getGasPrices() -> (Double, Double, Double)
{
    return (3.59, 3.69, 3.79)
}
getGasPrices()

func sumOf(numbers:Int...) -> Int
{
    var sum = 0
    
    
    
    for number in numbers
    {
        sum += number
    }
    
    return sum
}

func averageOf(numbers:Int...) -> Int
{
    var sum = 0
    
    
    
    for number in numbers
    {
        sum += number
    }
    
    
    return Int(sum / numbers.count)
}

sumOf()
sumOf(42, 597, 12)
averageOf(42, 597, 12)



func returnFifteen() -> Int
{
    var y = 10
    func add()
    {
        y += 5
    }
    // before y = 10
    add()
    
    return y

}
returnFifteen()



// ------
func makeIncrementer() -> (Int -> Int)
{
    func addOne(number:Int) -> Int
    {
        return 1 + number
    }
    
    return addOne
}

var increment = makeIncrementer()
// increment(7)     result is 8

func hasAnyMatches(list : [Int], condition : Int -> Bool) -> Bool
{
    for item in list
    {
        if condition(item)
        {
            return true
        }
    }
    
    return false
}


func lessThenTen(number : Int) -> Bool
{
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThenTen)


numbers.map({
    (number : Int) -> Int in var result = 3 * number
    if number % 2 != 0
    {
        result = 0
    }
    return result
})
// numbers.map({number in 3*number})





class Shape {
    var numberOfSides = 0
    let greeting = "Hello, World"
    
    func simpleDescription() -> String
    {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 7;
var shapeDescription = shape.simpleDescription()

class NamedShape
{
    var numberOfSides = 0
    var name : String
    
    init(name : String)
    {
        self.name = name;
    }
    
    func simpleDescription() -> String
    {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square : NamedShape
{
    var sideLength: Double
    
    init(sideLength: Double, name: String)
    {
        self.sideLength = sideLength
        
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() ->Double
    {
        return sideLength * 4
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()


class Circle : NamedShape
{
    var radius: Double
    
    init(radius: Double, name: String)
    {
        self.radius = radius
        
        super.init(name: name)
    }
    
    func area() ->Double
    {
        return 3.14 * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "A circle with radius of length \(radius)."
    }
}



class EquilateralTriangle: NamedShape
{
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String)
    {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double
    {
        get
        {
            return 3.0 * sideLength
        }
        
        set
        {
            
            println("newValue = \(newValue)")
            sideLength = newValue/3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
triangle.perimeter
triangle.perimeter = 9.9
triangle.sideLength


class TriangleAndSquare
{
    var triangle: EquilateralTriangle
    {
        willSet
        {
            square.sideLength = newValue.sideLength
        }
        
    }
    
    var square: Square
    {
        willSet
        {
            triangle.sideLength = newValue.sideLength
        }
        
    }
    
    init(size: Double, name: String)
    {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
    
}



class Counter
{
    var count:Int = 0
    
    func incrementBy(amount: Int, numberOfTimes times: Int)
    {
        count += amount * times
    }
}

var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)

func repeat<ItemType>(item:ItemType, times: Int) ->[ItemType]
{
    var result = [ItemType]();
    for i in 0...times
    {
        // result += item
    }
    
    return result;
}

// repeat("knock", 4)



// 十进制，二进制
var decimalInteger = 17
var binaryInteger = 0b10001


// optional TYPE
let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()

// forced unwrapping
convertedNumber!

if let actualNumber = convertedNumber
{
    // actualNumber is Int type
    println("The number is \(actualNumber)")
}

var 🐔 =  -1
var 🐒 = -1
println("3+🐔+🐒 = \(3+🐔+🐒)")


//
for i in 6...17
{
    println("i = \(i)")
}
