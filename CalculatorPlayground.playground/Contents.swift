import Foundation

protocol Operator {
    var valueA: Int { get }
    var valueB: Int { get }
    
    func operate() -> Int
}

class Calculator {
    let valueA: Int
    let valueB: Int
    var result: Int?
    
    // 호출되기 전엔 메모리를 차지하지 않게 lazy var 선언
    lazy var adder = Adder(valueA: valueA, valueB: valueB)
    lazy var subtractor = Subtractor(valueA: valueA, valueB: valueB)
    lazy var multiplier = Multiplier(valueA: valueA, valueB: valueB)
    lazy var divider = Divider(valueA: valueA, valueB: valueB)
    
    init(valueA: Int, valueB: Int, result: Int? = nil) {
        self.valueA = valueA
        self.valueB = valueB
        self.result = result
    }
    
    func storeResult(of operation: () -> Int) {
        result = operation.self()
    }
}

var calculator = Calculator(valueA: 3, valueB: 4)

calculator.adder.operate()
calculator.subtractor.operate()
calculator.multiplier.operate()
calculator.divider.operate()

class Adder: Operator {
    var valueA: Int
    var valueB: Int
    
    
    init(valueA: Int, valueB: Int) {
        self.valueA = valueA
        self.valueB = valueB
    }
    
    func operate() -> Int {
        return valueA + valueB
    }
}

class Subtractor: Operator {
    var valueA: Int
    var valueB: Int
    
    init(valueA: Int, valueB: Int) {
        self.valueA = valueA
        self.valueB = valueB
    }
    
    func operate() -> Int {
        return valueA - valueB
    }
}

class Multiplier: Operator {
    var valueA: Int
    var valueB: Int
    
    init(valueA: Int, valueB: Int) {
        self.valueA = valueA
        self.valueB = valueB
    }
    
    func operate() -> Int {
        valueA * valueB
    }
}

class Divider: Operator {
    var valueA: Int
    var valueB: Int
    
    init(valueA: Int, valueB: Int) {
        self.valueA = valueA
        self.valueB = valueB
    }
    
    func operate() -> Int {
        valueA / valueB
    }
}
