import Foundation

class Calculator {
    
    func add(_ lhs: Int, to rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func subtract(_ lhs: Int, from rhs: Int) -> Int {
        return rhs - lhs
    }
    
    func multiply(_ lhs: Int, and rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func divide(_ lhs: Int, by rhs: Int) -> Int {
        return lhs / rhs
    }
    
    func getRemainder(of number: Int, dividedBy divisor: Int) -> Int {
        return number % divisor
    }
    
}

let calculator = Calculator()

// 영어의 어순에 맞게 바꾸어 보았으나... 어떤지는 모르겠다.
calculator.add(5, to: 1)
calculator.subtract(3, from: 4)
calculator.multiply(3, and: 3)
calculator.divide(4, by: 2)
calculator.getRemainder(of: 12, dividedBy: 5)
