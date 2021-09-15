//: [Previous](@previous)
import UIKit
import Foundation

/*:
 # Constantes y Variables
  Podéis encontrar el post aquí https://www.swiftbeta.com/constantes-y-variables-en-swift/
*/

// Constante
let numberOfItems = 10
// Variable
var isButtonTapped = true

let numberOfData: Int = 10
var isImageTapped: Bool = false

// Definir varias variables en una misma línea
var coordinateX = 0.0, coordinateY = 0.0, coordinateZ = 0.0

// Anotaciones de tipo para especificar el tipo exacto que queremos
var myDouble = 1.2

// Ahora queremos que 1.2 sea de tipo CGFloat, por lo tanto se lo debemos especificar. Para usar CGFloat debemos importar UIKit
var myCGFloat: CGFloat = 1.2

/*:
 ### Type Aliases
*/

typealias Name = String
var name: Name = "SwiftBeta"

/*:
 ### Tuplas
*/

let user = ("Swift", "Beta")
user.0
user.1

let (brandName, brandSurname) = user

//: [Next](@next)
