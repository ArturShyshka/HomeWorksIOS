import UIKit
import Foundation

var numberArrray = [-1, 3, -54, 20, -10, 20, 43, -6, 21, -4]

// Task 1
for (index, number) in numberArrray.enumerated() where number < 0{
    numberArrray[index] = 0
}

//print(numberArrray)

// Task 2
//print("Максимальний елемент: \(numberArrray.max()!), Мінімальний елемент: \(numberArrray.min()!)")

// Task 3
var sumNumInArray : Int = 0

for i in numberArrray {
    sumNumInArray += i
}

//print(sumNumInArray)

// Task 4
let monthsOfYear = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

var monthsDictionary = [Int: String]()

for (index, month) in monthsOfYear.enumerated(){
    monthsDictionary[index + 1] = month
}

//print(monthsDictionary)

// Task 5
var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]

(dictionary["first"], dictionary["fourth"]) = (dictionary["fourth"], dictionary["first"])

//print(dictionary)

// Task 6
var calendar = [Int: [String]]()

for i in 1970...2022 {
    calendar[i] = monthsOfYear
}

//print(calendar)

// Task 7
for i in 1970...2022 {
    calendar[i]?.append("ThirteenthMonth")
}

//print(calendar)

// Task 7.1
let daysOfMonth = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]

var calendarPro = [Int: [String: [Int]]]()
var fullMonth = [String: [Int]]()

for i in monthsOfYear {
    fullMonth[i] = daysOfMonth
    fullMonth.sorted(by: { $0.0 < $1.0 })
    for j in 1970...2022 {
        calendarPro[j] = fullMonth
    }
}

var sortedCalendar = calendarPro.keys.sorted(by: {$0 < $1})

//print("\(calendarPro[2019]!["September"]![0]) Вересня \(sortedCalendar[49]) року")


//print("\(Array(calendarPro.values)[1])")

// Task 8
let a = 12
let b = 2
let c = a + b

if a == b {
    print((c) * 3)
} else if c % 2 == 0 {
        print(c)
} else {
    print("Чилса не підходять під умову")
}

// Task 9
var sentence = "solution ninth tasks!"
var divideSentences = sentence.components(separatedBy: [" ", "!"])

//print(divideSentences[0], divideSentences[2])
