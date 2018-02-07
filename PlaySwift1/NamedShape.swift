//
//  NamedShape.swift
//  PlaySwift1
//
//  Created by Mark on 2018/2/7.
//  Copyright © 2018年 Tsinghua University. All rights reserved.
//
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    deinit {
        print("NamedShape 对象被释放啦")
    }
}
