import Foundation

class Calculator {
    
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
}

let calculator = Calculator()

calculator.add(lhs: 1, rhs: 3)
calculator.divide(lhs: 4, rhs: 2)
calculator.multiply(lhs: 1, rhs: 4)
calculator.subtract(lhs: 14, rhs: 4)
