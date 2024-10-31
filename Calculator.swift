import Foundation

protocol Operator {
    var valueA: Double { get }
    var valueB: Double { get }
    
    func operate() -> Double
}

class Calculator {
    let valueA: Double
    let valueB: Double
    var result: Double?
    
    // 호출되기 전엔 메모리를 차지하지 않게 lazy var 선언
    lazy var adder = Adder(valueA: valueA, valueB: valueB)
    lazy var subtractor = Subtractor(valueA: valueA, valueB: valueB)
    lazy var multiplier = Multiplier(valueA: valueA, valueB: valueB)
    lazy var divider = Divider(valueA: valueA, valueB: valueB)
    
    init(valueA: Double, valueB: Double, result: Double? = nil) {
        self.valueA = valueA
        self.valueB = valueB
        self.result = result
    }
    
    func storeResult(of operation: () -> Double) {
        result = operation.self()
    }
}

var calculator = Calculator(valueA: 3, valueB: 4)

calculator.adder.operate()
calculator.subtractor.operate()
calculator.multiplier.operate()
calculator.divider.operate()

class Adder: Operator {
    var valueA: Double
    var valueB: Double
    
    
    init(valueA: Double, valueB: Double) {
        self.valueA = valueA
        self.valueB = valueB
    }
    
    func operate() -> Double {
        return valueA + valueB
    }
}

class Subtractor: Operator {
    var valueA: Double
    var valueB: Double
    
    init(valueA: Double, valueB: Double) {
        self.valueA = valueA
        self.valueB = valueB
    }
    
    func operate() -> Double {
        return valueA - valueB
    }
}

class Multiplier: Operator {
    var valueA: Double
    var valueB: Double
    
    init(valueA: Double, valueB: Double) {
        self.valueA = valueA
        self.valueB = valueB
    }
    
    func operate() -> Double {
        valueA * valueB
    }
}

class Divider: Operator {
    var valueA: Double
    var valueB: Double
    
    init(valueA: Double, valueB: Double) {
        self.valueA = valueA
        self.valueB = valueB
    }
    
    func operate() -> Double {
        valueA / valueB
    }
}
