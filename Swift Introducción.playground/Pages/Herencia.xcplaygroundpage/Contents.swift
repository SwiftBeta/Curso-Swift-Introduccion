//: [Previous](@previous)
import Foundation

/*:
 # Herencia
  Podéis encontrar el post aquí https://www.swiftbeta.com/herencia-en-swift/
*/

class Vehicle {
    var currentSpeed = 0.0
    
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() {
        // do nothing
    }
}

let someVehicle = Vehicle()
someVehicle.description
// "traveling at 0.0 miles per hour"


/*:
 ## Herencia
*/

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
bicycle.description


/*:
 ## Sobrescribir métodos, propiedades, etc
*/

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

let train = Train()
train.makeNoise()

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")

//: [Next](@next)
