import UIKit

// Task 1

enum Chess: String {
    case pawn
    case knight
    case bishop
    case rook
    case queen
    case king
}

enum Cards {
    case jack
    case queen
    case king
    case ace
    case joker
}

func getNumberCards(cards: Cards) -> Int {
    switch cards {
        case .jack: return 11
        case .queen: return 12
        case .king: return 13
        case .ace: return 14
        case .joker: return 15
    }
}

let chess = Chess.king
chess.rawValue

let ace = Cards.ace
getNumberCards(cards: ace)

enum CardBank {
    case bank(String)
    case replenish(Float)
    case withdraw(Int)
}

func moneyTransactions(card: CardBank) -> String {
    switch card {
    case .bank(let yourBank):
        return "У вас зявилася карта від банку \(yourBank)"
    case .replenish(let money):
        return "Ви поповнили карту на суму - \(money)"
    case .withdraw(let cash):
        return "Банк видав готівку у розмірі - \(cash)"
    }
}

let bank = CardBank.bank("Privat")
let replenish = CardBank.replenish(39.45)
let withdraw = CardBank.withdraw(300)

//print(moneyTransactions(card: bank))
//print(moneyTransactions(card: replenish))
//print(moneyTransactions(card: withdraw))

// Task 2

// MARK: Enum
enum VechileType {
    case electric
    case nonElectric
}

// MARK: Protocols
protocol Vechile {
    var weight: Float { get }
    var speed: Float { get }
    var type: VechileType { get }
    var canFly: Bool { get }
    
    func prepare()
}

protocol FlyableVechile {
    func getMaxHight() -> Float
}

// MARK: Extensions
extension Vechile {
    var canFly: Bool {
        return false
    }
    
    func prepare(isElectric: VechileType) {
        switch isElectric {
            case .electric:
                print("Charge")
            case .nonElectric:
                print("Refuel")
        }
    }
}

extension Vechile where Self: FlyableVechile {
    var canFly: Bool {
        return true
    }
    var type: VechileType {
        return .nonElectric
    }
    
    func getMaxHight(isElectric: VechileType) -> Float {
        return isElectric == .electric ? weight + speed : weight * speed
    }
}

// MARK: Structures
struct Car: Vechile {
    var weight: Float
    var speed: Float
    var type: VechileType
    
    func prepare() { }
}

struct ElectricCar: Vechile {
    var weight: Float
    var speed: Float
    var type: VechileType
    
    func prepare() { }
}

struct AirPlane: Vechile, FlyableVechile {
    var weight: Float
    var speed: Float
    
    func getMaxHight() -> Float { return 0.0 }
    
    func prepare() { }
}

struct ElectricalAirPlane: Vechile, FlyableVechile {
    var weight: Float
    var speed: Float
    
    func getMaxHight() -> Float { return 0.0 }
    
    func prepare() { }
}

// MARK: Main
var car = Car(weight: 2000, speed: 100, type: .nonElectric)
car.canFly
car.type
car.prepare(isElectric: car.type)

var electricCAR = ElectricCar(weight: 1500, speed: 200, type: .electric)
electricCAR.canFly
electricCAR.type
car.prepare(isElectric: electricCAR.type)

var airPlane = AirPlane(weight: 10500, speed: 600)
airPlane.canFly
airPlane.getMaxHight(isElectric: .nonElectric)

var electricalAirPlan = ElectricalAirPlane(weight: 10500, speed: 600)
electricalAirPlan.canFly
electricalAirPlan.getMaxHight(isElectric: .electric)

