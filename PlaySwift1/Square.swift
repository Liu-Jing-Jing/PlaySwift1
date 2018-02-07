//
//  Square.swift
//  PlaySwift1
//
//  Created by Mark on 2018/2/7.
//  Copyright © 2018年 Tsinghua University. All rights reserved.
//
// 如果没有添加override就重写父类方法的话编译器会报错。
// 编译器同样会检测override标记的方法是否确实在父类中。
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name) //调用父类方法来实现名字的初始化
        numberOfSides = 4
    }
    
    func area() ->  Double {
        print("\(sideLength)--\(sideLength)")
        return sideLength * sideLength
    }
    
    // 复写父类的描述方法
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

