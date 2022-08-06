import UIKit

// Task 1

// Protocols
protocol Movable {
    func run()
}

protocol Fightable {
    func fight()
}

protocol Hero: Movable, Fightable {
    var name: String { get }
}

// Structures
struct Warrior: Fightable {
    func fight() {
        print("Warrior fighting")
    }
}

struct Horse: Movable {
    func run() {
        print("Horse running")
    }
}

struct MainCharacter: Hero {
    var name: String
    
    func run() {
        print("\(name) runing")
    }
    
    func fight() {
        print("\(name) fighting")
    }
    
    
}

// Classes
class Tavern {
    var fighters: [Fightable]
    var movers: [Movable]
    
    init(fighters: [Fightable], movers: [Movable]) {
        self.fighters = fighters
        self.movers = movers
    }
    
    func enterTaver(hero: Hero) {
        hero.fight()
        
        for i in movers {
            i.run()
        }
        
        for i in fighters {
            i.fight()
        }
    }
    
}

// Main
var firstWarrior = Warrior()
var secondWarrior = Warrior()
var firstHorse = Horse()
var secondHorse = Horse()
var firsthero = MainCharacter(name: "Witcher")
var secondhero = MainCharacter(name: "Dragon")


var tavern = Tavern(fighters: [firstWarrior, secondWarrior], movers: [firstHorse, secondHorse])

//print(tavern.enterTaver(hero: firsthero))
//print(tavern.enterTaver(hero: secondhero))

// Task 3

extension Int {
    func power(_ powNumber: Int) -> Int {
        var result = self
        for _ in 2...powNumber {
            result *= self
        }
        return result
    }
}

//print(5.power(16))

extension String {
    func isPalindrome() -> Bool {
        let strReversed = self.reversed()
        return String(strReversed) == self ? true : false
    }
}

//print("202020".isPalindrome())

// Task 5

func changeValue<T>(a: inout T, b: inout T) {
    (a, b) = (b, a)
    print("a = \(a), b = \(b)")
}
var num1 = 22
var num2 = 34
//changeValue(a: &num1, b: &num2)


func tuple<T, D>(firstElement: T, secondElement: D) -> (T, D) {
    return(firstElement, secondElement)
}
//print(tuple(firstElement: 95, secondElement: "String"))

func sum<T: Numeric>(a: T, b: T) -> T {
    return a + b
}
//print(sum(a: 23, b: 43))

struct Dict<T: Hashable, D> {
    var allElementDict: [T: D] = [:]
    
    mutating func appendElement(value: D, forKey: T) {
        allElementDict.updateValue(value, forKey: forKey)
    }
    
    func getElement(key: T) {
        if let element = allElementDict[key] {
            print(element)
        } else {
            print("Такий ключ не існує")
        }
    }
}

var dictionary = Dict<Int, String>()

dictionary.appendElement(value: "one", forKey: 1)
dictionary.appendElement(value: "two", forKey: 2)
dictionary.appendElement(value: "three", forKey: 3)
dictionary.appendElement(value: "four", forKey: 4)

//print(dictionary.allElementDict)
//dictionary.getElement(key: 2)

// Task 6

struct Stack<T> {
     var array = [T]()
    
     mutating func push(_ element: T) {
        array.append(element)
     }
    
     mutating func pop() -> T? {
        return array.popLast()
     }
    
     func topElement() -> T? {
        return array.last
     }
}

var stack = Stack<Int>()

stack.push(2)
stack.push(1)
stack.push(6)
stack.push(9)

stack.array
stack.topElement()

stack.pop()
stack.topElement()

stack.array


