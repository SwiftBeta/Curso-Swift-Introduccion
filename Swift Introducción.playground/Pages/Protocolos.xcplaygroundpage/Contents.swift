//: [Previous](@previous)
import Foundation

/*:
 # Protocolos
  Podéis encontrar el post aquí https://www.swiftbeta.com/protocolos-en-swift/
*/


/*:
 ## Sintaxis
*/

protocol MyProtocol {
    // protocol definition goes here
}

protocol AnotherProtocol {
    // protocol definition goes here
}

struct SomeStructure: MyProtocol, AnotherProtocol {
    // structure definition goes here
}

/*:
 ## Requerimientos de propiedad
*/

protocol SomeProtocol {
    var mustBeSettabgle: Int { get set }
    var doesNotNeedToBeSettable: Int { get }
}

protocol SomeOtherProtocol {
    static var someTypeProperty: Int { get set }
}

/*:
 ## Ejemplo Protocolo: variables
*/

protocol Shippeable {
    var street: String { get }
    var city: String { get }
    var zip: String { get }
}

struct Product: Shippeable {
    var id: String
    var name: String
    var street: String
    var city: String
    var zip: String
}

let product = Product(id: "1",
                      name: "Mobile",
                      street: "Paseo Centro",
                      city: "Swiftbetalandia",
                      zip: "0000")

/*:
 ## Ejemplo Protocolo: métodos
*/

protocol Calculable {
    func calculate() -> String
}

struct Calculator: Calculable {
    func calculate() -> String {
        return "Saome value..."
    }
}

/*:
 ## Ejemplo Protocolo: inicializadores
*/

protocol Initializable {
    init(parameterOne: String, parameterTwo: Int)
}

struct User: Initializable {
    init(parameterOne: String, parameterTwo: Int) {
        // Create initializer
    }
}

/*:
 ## Extensiones
*/

import UIKit

protocol Animatable where Self: UIView {
    func animate()
}

extension Animatable where Self: UIView {
    func animate() {
        print("Do some animation")
    }
}

class MyCustomView: UIView, Animatable { }
let myView = MyCustomView()
myView.animate()


//: [Next](@next)
