//
//  Calculator.swift
//  Calculator
//
//  Created by Ryo Togashi on 2019-08-21.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

import UIKit

class Calculator: NSObject {
    
    func calculate(_ a: Int, _ b: Int, _ oprator: OperaterElement) -> Int {
        
        var ans: Int
        switch oprator {
        case .Plus:
            ans = add(a, b)
        case .Minus:
            ans = minus(a, b)
        case .Multiply:
            ans = multiply(a, b)
        case .Division:
            ans = divide(a, b)
        case .Remainder:
            ans = remain(a, b)
        }
        
        return ans
    }
    
    private func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    private func minus(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
    
    private func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    
    private func divide(_ a: Int, _ b: Int) -> Int {
        return a / b
    }
    
    private func remain(_ a: Int, _ b: Int) -> Int {
        return a % b
    }
    
    func toggleOperation(_ a: Int) -> Int {
        return (-1) * a
    }
}
