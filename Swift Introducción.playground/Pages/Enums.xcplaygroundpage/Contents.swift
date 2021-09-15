//: [Previous](@previous)
import Foundation

/*:
 # Enums
  Podéis encontrar el post aquí https://www.swiftbeta.com/enums-en-swift/
 ## Ejemplos
*/

enum MessageStatus {
    case sent
    case received
    case read
}

/*
 ## Associated Values
 */

enum Status {
    case sent(messageId: String)
    case received(messageId: String)
    case read
}

let status = Status.sent(messageId: "12345678")

/*
 ## Sintaxis del enum
*/

enum CompassPoint {
    case north
    case south
    case east
    case west
}

var pointOne: CompassPoint = .north
var pointTwo = CompassPoint.north

/*
 ## Matching con Switch
*/

switch pointTwo {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}

/*
 ## CaseIterable protocol
*/

enum Week: CaseIterable {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

let numberOfDays = Week.allCases.count
print("Week days: \(numberOfDays)")

/*
 ## Associated value
*/

enum Field {
    case name(String)
    case street(String)
    case phone(number: String)
}

let name: Field = .name("SwiftBeta")

/*
 ## Raw Values
*/

enum MessageEncoded: String {
    case keyOne = "12345678"
    case keyTwo = "qwerty"
}

let messageEncoded = MessageEncoded.keyOne.rawValue
messageEncoded

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

[""].reversed()

//: [Next](@next)
