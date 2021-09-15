//: [Previous](@previous)
import Foundation

/*:
 # Colecciones
  Podéis encontrar el post aquí https://www.swiftbeta.com/colecciones-array-set-y-dictionary-en-swift/
 
 ## Array
*/
var arrayStrings = ["SwiftBeta", "iOS"]
arrayStrings.append("Blog")

// Tenemos un error en la siguiente línea, ya que el array es de tipo String. Al intentar meter un entero nos da un error
// arrayStrings.append(1)

// Colecciones mutables

var myArray: [String]
var myNewArray: Array<String>

// Crear una array vacío

var someInts = [Int]()
var someNewInts: [Int] = []

// Crear un array por defecto
var arrayOfNumbers = Array(["1", "2", "3"])
var arrayOfNewNumbers = ["1", "2", "3"]


// Acceder y Modificar un Array

arrayStrings = ["1", "2", "3"]

// Número de elementos en un Array
print("The arrayStrings contains \(arrayStrings.count) items.")

// Saber si un Array está vacío
if arrayStrings.isEmpty {
    print("arrayStrings is empty.")
} else {
    print("arrayStrings is not empty.")
}

// Añadir un elemento al final del Array
arrayStrings.append("4")
arrayStrings += ["5", "6"]

// También podemos insertar un elemento en una posición específica usando el siguiente método
arrayStrings.insert("7", at: 0)
// El resultado es ["7", "1", "2", "3", "4"]

/*:
 ## Set
*/

struct User: Hashable {
    var name: String
    var age: Int
}

let swift = User(name: "swiftbeta", age: 20)
let beta = User(name: "swiftbeta", age: 20)

var users = Set(arrayLiteral: swift, beta)

// Acceder y modificar un Set

// Número de elementos en un Set
print("The users contains \(users.count) items.")

// Saber si un Set está vacío
if users.isEmpty {
    print("users is empty.")
} else {
    print("users is not empty.")
}

// Añadir un elemento
users.insert(User(name: "Blog", age: 30))

// Comprobar que Set contiene un valor
users.contains(swift)

// Borrar un elemento del Set
users.remove(swift)
/*:
 ## Dictionary
*/
var citiesInformation = [String: String]()
var citiesNewInformation: [String: String] = [:]

var cityInformation = ["name": "London", "coordinateX": "1.0", "coordinateY": "1.0"]

// Acceder y Modificar un Dictionary

// Número de elementos en un Array
print("The citiesInformation contains \(citiesInformation.count) items.")

// Saber si un Array está vacío
if citiesInformation.isEmpty {
    print("citiesInformation is empty.")
} else {
    print("citiesInformation is not empty.")
}

// Añadir un elemento al Dictionary
citiesInformation["notes"] = "Beautiful City"

// Comprobar que existe una key y actualizar su valor
if let oldValue = citiesInformation.updateValue("Paris", forKey: "name") {
    print("The old value for name was \(oldValue)")
}

// Borrar el valor de una key
if let removedValue = citiesInformation.removeValue(forKey: "name") {
    print("The removed value is \(removedValue)")
}

// Para borrar el valor de una key, podemos usar subscripts y asignarle nil a la key
citiesInformation["notes"] = nil
//: [Next](@next)
