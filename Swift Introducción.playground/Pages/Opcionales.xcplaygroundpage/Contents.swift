//: [Previous](@previous)
import Foundation

/*:
 # Opcionales
  Podéis encontrar el post aquí https://www.swiftbeta.com/opcionales-en-swift/
*/
let myStringNumber = "123"
let myNumber = Int(myStringNumber)

// Podríamos interpretar los opcionales como un enum con dos valores, uno vacío y el otro con algún valor
enum Optional<Wrapped> {
    case none
    case some(Wrapped)
}

var myValue: Optional<String> = .none
myValue = .some("Hello")

// 
var myInt: Int? = nil
myInt = 2


// Manera segura de sacar el valor del opcional
if let value = myNumber {
    print("Int \(value)")
}


// Otra manera de sacar el valor de un opcional es usando map
myNumber.map { value in
    print("Int \(value)")
}


// Force unwrapp
myNumber!


// Asignar a una constante nil no tiene sentido
let myConstant: Int? = nil
// Error al descomentar la siguiente línea
//myConstant = 2

// Operador ??
let helloString = "Hola"
let myNumberFails = Int(helloString)

let defaultNumber = myNumberFails ?? 1



//: [Next](@next)
