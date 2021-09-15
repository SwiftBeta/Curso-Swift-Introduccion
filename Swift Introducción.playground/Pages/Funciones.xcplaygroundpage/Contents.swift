//: [Previous](@previous)
import Foundation

/*:
 # Funciones
  Podéis encontrar el post aquí https://www.swiftbeta.com/funciones-en-swift/
*/

func myFunction() {
    // TODO: Do something
}

func createUser(name: String, age: Int) -> Bool {
    print("User name: \(name)")
    print("User age: \(age)")
    return true
}

let createUserFunction = createUser(name:age:)

/*:
  ## Tuplas
*/

func getTwoValues() -> (String, String) {
    let name = "Swift"
    let surname = "Beta"
    return (name, surname)
}

let (name, surname) = getTwoValues()

/*:
  ## Nombres de los parámetros
*/

func getTwoValues(paramOne name: String,
                  paramTwo surname: String) -> (String, String) {
    return (name, surname)
}

let (paramOne, paramTwo) = getTwoValues(paramOne: "Swift",
                                        paramTwo: "Beta")


/*:
  ## Valores por defecto
*/

func createDatabase(name: String, path: String = "/") {
    // Do something
}

createDatabase(name: "SwiftBetaDatabase")

/*:
  ## Parámetros Variadic
*/

func validate(names: String...) {
    print("Names \(names)")
}

validate(names: "Swift", "Beta")

/*:
  ## Parámetros In-Out
*/

//func validateNames(names: [String]) {
//    names = ["Beta", "Swift"]
//    print("Names \(names)")
//}
//
//validateNames(names: ["Loop", "Infinito"])

func validate(names: inout [String]) {
    names = ["Beta", "Swift"]
    print("Names \(names)")
}

var arrayOfNames = ["Swift", "Beta"]
validate(names: &arrayOfNames)

/*:
  ## Tipo de una función
*/

let typeFunction = validate(names:)
// El tipo es: (inout [String]) -> ()

//: [Next](@next)
