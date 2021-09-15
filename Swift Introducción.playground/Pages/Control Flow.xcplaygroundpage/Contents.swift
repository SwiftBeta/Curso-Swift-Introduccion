//: [Previous](@previous)
import Foundation

/*:
 # Control Flow
  Podéis encontrar el post aquí https://www.swiftbeta.com/control-flow-en-swift/
  ## Bucles For-In
*/
// Iterar en un array
let names = ["Swift", "Beta", "Blog"]
for name in names {
    print("Hello, \(name)!")
}

// Iterar en un dictionary
let namesWithNumber = [10: "Swift", 20: "Beta", 30: "Blog"]
for (number, name) in namesWithNumber {
    print("Number \(number) and Name \(name)")
}

// Iterar usando rangos
for index in 1...5 {
    print("Index \(index)")
}

/*:
  ## Bucles While
*/

var count = 0
while count < 10 {
    print("Count \(count)")
    count += 1
}

var stepCounter = 0
repeat {
    print("Step Counter \(stepCounter)")
    stepCounter += 1
} while stepCounter < 10

/*:
  ## Sentencias condicionales
  ### If
*/
var numberOfSubscribers = 100

if numberOfSubscribers > 10 {
    print("A bunch of subscribers! 🤓")
}

if numberOfSubscribers > 10 {
    print("A bunch of subscribers! 🤓")
} else {
    print("Keep working!")
}

if numberOfSubscribers > 10 {
    print("A bunch of subscribers! 🤓")
} else if numberOfSubscribers > 5 {
    print("We need more subscribers!")
} else {
    print("Keep working!")
}
/*:
  ### Guard
*/

var myArray: [String] = []

func checkMyArray() {
    guard !myArray.isEmpty else {
        print("Array is empty!")
        return
    }
    
    print("Array is NOT empty!")
}

checkMyArray()


var myOptional: Int? = 2

func checkMyOptional() {
    guard let value = myOptional else {
        print("myOptional is nil!")
        return
    }
    
    print("myOptional value is \(value)!")
}

checkMyOptional()
/*:
  ### Switch
*/
switch numberOfSubscribers {
case 100:
    print("A bunch of subscribers! 🤓")
default:
    print("Keep working!")
}

switch numberOfSubscribers {
case let x where numberOfSubscribers > 5:
    print("A bunch of subscribers! TOTAL: \(x)")
default:
    print("Keep working!")
}

// Enum with different cases
enum MessageStatus {
    case sent
    case delivered
    case read
}

let status: MessageStatus = .read

switch status {
case .sent:
    print("Message sent, add grey stick")
case .delivered:
    print("Message delivered, add new stick")
case .read:
    print("Message read, update double stick to blue")
}
//: [Next](@next)
