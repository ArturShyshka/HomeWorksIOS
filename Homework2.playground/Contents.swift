import UIKit
import Foundation

// Task 1
class Sailor {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func introduceMyself() {
        print("Привіт! Мене звати \(name)")
    }
}

let firstSailor = Sailor(name: "David")

//print(firstSailor.introduceMyself())

// Task 2
class Ship {
    var shipName: String
    var sailors: [String]
    
    init(shipName: String, sailors: [String]) {
        self.shipName = shipName
        self.sailors = sailors
    }
    
    func introduceAll() {
        for i in sailors {
            print("Привіт! Мене звати \(i)")
        }
        print("Ми з корабля \(shipName)")
    }
}

// Task 3
let sailor1 = Sailor(name: "Anton")
let sailor2 = Sailor(name: "David")
let sailor3 = Sailor(name: "Georg")
let sailor4 = Sailor(name: "John")
let sailor5 = Sailor(name: "Bastian")

let nameOfShip = Ship(shipName: "Titanic", sailors: [sailor1.name, sailor2.name, sailor3.name, sailor4.name, sailor5.name])

//nameOfShip.introduceAll()

// Task 4
class Titanic: Ship {
    override func introduceAll() {
        super.introduceAll()
        for i in sailors {
            print("Hello! My name is \(i)")
        }
        print("We are from the ship \(shipName)")
        
    }
}

class TitanicSailor: Sailor {
    override func introduceMyself() {
        print("Hello! My name is \(name)")
    }
}

let someSailor = TitanicSailor(name: "Paulo")
let sailorFromShip = Titanic(shipName: "Aurora", sailors: [sailor1.name, sailor2.name, sailor3.name, sailor4.name, sailor5.name])

//sailorFromShip.introduceAll()
//someSailor.introduceMyself()

// Task 5
class Calculator {
    func addition(a: Double, b: Double) -> Double {
        return a + b
    }
    
    func subtraction(a: Double, b: Double) -> Double {
        return a - b
    }
    
    func division(a: Double, b: Double) -> Double {
        return a / b
    }
    
    func multiplication(a: Double, b: Double) -> Double {
        return a * b
    }
}

var num = Calculator()
//num.addition(a: 32, b: 43)
//num.division(a: 82.23, b: 7.3)
//num.subtraction(a: 842, b: 4.23)
//num.multiplication(a: 423, b: 42)

class CalculatorPro {
    func percentageOfNumber(a: Double, b: Double) -> Double {
        // Скільки відсотків складає одне число від іншого
        return (b / a) * 100
    }
    
    func powerNumber(number: Double) -> Double {
        return pow(number, 2)
    }
}

//CalculatorPro().percentageOfNumber(a: 20, b: 5)

// Task 5.1
class SuperCalculatePro: CalculatorPro {
    func deposit(money: Float, percent: Float, month: Int) -> Int {
        return Int(((money * (percent / 100))) / 12) * month
    }
}

//SuperCalculatePro().deposit(money: 12000, percent: 12, month: 9)

// Task 6
func batteryCharge(batteryPercentage: Int) -> String {
    switch batteryPercentage {
    case 100:
        return "Пристрій заряджений"
    case 70...80:
        return "Необхідно зарядити пристрій протягом 6 годин"
    case 20...40:
        return "Поставте пристрій на зарядку"
    case 0:
        return "Пристрій повністю розряджений"
    default:
        return ""
    }
}

//print(batteryCharge(batteryPercentage: 32))
