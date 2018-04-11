//
//  Student.swift
//  SwiftDemo
//
//  Created by Mark Lewis on 18-1-9.
//  Copyrhs (c) 2018年 Tsinghua University. All rhss reserved.
//

import Foundation
protocol RandomNumberGenerator {
    func random() -> Double
}

class Student:Comparable, Equatable{
    var name = ""
    var score = 0
    
    init(stuName: String, score: Int){
        self.name = stuName
        self.score = score
    }
    
    class func simpleDescription(stu: Student)->String{
        return "Student: \(stu.name) - \(stu.score)"
    }
    
    func random() -> Double{
        return 1.1
    }
}
func ==(lhs: Student, rhs: Student) -> Bool{
    if lhs.score == rhs.score{
        return true
    }
    else
    {
        return false
    }
}

func <=(lhs: Student, rhs: Student) -> Bool{
    if lhs.score <= rhs.score{
        return true
    }
    else
    {
        return false
    }
}

func >=(lhs: Student, rhs: Student) -> Bool{
    if lhs.score >= rhs.score{
        return true
    }
    else
    {
        return false
    }
}

func >(lhs: Student, rhs: Student) -> Bool
{
    if lhs.name != rhs.name
    {
        if lhs.score > rhs.score
        {
            return true
        }
        else
        {
            return false
        }
    }
    else
    {
        if lhs.name > rhs.name
        {
            return true
        }
        else
        {
            return false
        }
    }
}



func <(lhs: Student, rhs: Student) -> Bool{
    if lhs.name != rhs.name
    {
        if lhs.score < rhs.score
        {
            return true
        }
        else
        {
            return false
        }
    }
    else
    {
        if lhs.name < rhs.name
        {
            return true
        }
        else
        {
            return false
        }
    }
}