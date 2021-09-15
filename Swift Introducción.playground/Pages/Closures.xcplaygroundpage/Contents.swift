//: [Previous](@previous)
import Foundation

/*:
 # Closures
  Podéis encontrar el post aquí https://www.swiftbeta.com/closures-en-swift/
 ## Ejemplos
*/

var names = ["Chris", "Alex", "SwiftBeta", "iOS", "Apple"]

names.sorted { (firstValue, secondValue) -> Bool in
    return firstValue < secondValue
}

names.sorted { (firstValue, secondValue) -> Bool in
    firstValue < secondValue
}

names.sorted { $0 < $1 }
names.sorted(by: <)

/*
 ## Pasar una función a sorted(by:)
 */

func backward(_ stringOne: String, _ stringTwo: String) -> Bool {
    return stringOne > stringTwo
}

// reversedNames es una función, debemos llamarla para que se ejecute
var reversedNames = names.sorted(by: backward)


reversedNames = names.sorted(by: { (stringOne: String, stringTwo: String) -> Bool in
    return stringOne < stringTwo
})


/*
 ## Trailing Closure
*/

func someFunctionThatTakesAClosure(closure: () -> Void) {
    
}

// Así es como llamamos a la función

someFunctionThatTakesAClosure {
    
}

/*
 ## Map
*/

var numbersString = ["1", "2", "3", "4", "5"]
var numbersInt = numbersString.map { Int($0) }
numbersInt

func mapStringToInt(_ value: String) -> Int {
    return Int(value)!
}

numbersString.map(mapStringToInt)


/*
 ## Múltiples closures en una función
*/

enum BackendError {
    case customError
}

func getDataFromBackend(status: String,
                        onSuccess: () -> Void,
                        onFailure:(BackendError) -> Void) {
    if status == "OK" {
        onSuccess()
    } else {
        onFailure(.customError)
    }
}

getDataFromBackend(status: "OK", onSuccess: {
    print("Todo OK")
}) { (error) in
    print("Error \(error)")
}

/*
 ## Capturando valores
 */

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()

incrementByTen()

/*
 ## Closure son Reference Types
*/

let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()

incrementByTen()

/*
 ## Escaping Closures
*/

func getDataFromBackend(completionHandler: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        completionHandler()
    }
}

/*
 ## Autoclosure
*/

var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
// El resultado es 5

let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)
// El resultaod es 5 ya que no hemos llamado a customerProvider()
// Hemos postergado ejecutar esta función para la siguiente línea

print("Now serving \(customerProvider())!")

print(customersInLine.count)
// Ahora el resultado del array es 4

// customersInLine is ["Alex", "Ewa", "Barry", "Daniella"]
func serve(customer customerProvider: () -> String) {
    print("Now serving \(customerProvider())!")
}

serve(customer: { customersInLine.remove(at: 0) } )
// Ahora el resultado es "Now serving Alex!"


func serve(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())!")
}

serve(customer: customersInLine.remove(at: 0) )
// Ahora el resultado es "Now serving Ewa!"


//: [Next](@next)
