//: [Previous](@previous)
import Foundation
import UIKit

/*:
 # Propiedades
  Podéis encontrar el post aquí https://www.swiftbeta.com/propiedades-en-swift/
*/

struct User {
    var name: String
    static var brand: String = "SwiftBeta Blog"
}

let user = User(name: "SwiftBeta")
user.name // Propiedad de instancia
User.brand // Propiedad de Tipo

/*:
  ## Propiedades Computadas en Swift
*/

struct Square {
    var origin: CGPoint = .zero
    var size: CGSize = .zero

    var center: CGPoint {
        get {
            let centerX = origin.x + (size.width * 0.5)
            let centerY = origin.y + (size.height * 0.5)
            return CGPoint(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width * 0.5)
            origin.y = newCenter.y - (size.height * 0.5)
        }
    }
}

let square = Square(origin: .zero,
                    size: .init(width: 200, height: 200))

square.center

/*:
  ## Property Observers
*/

struct Database {
    var name: String {
        willSet(newName) {
            print("About to set name \(newName)")
        }
        
        didSet {
            print("Added \(name)")
        }
    }
}

var database = Database(name: "Swift")
database.name = "SwiftBetaDatabase"

/*:
  ## Property Wrappers
*/

@propertyWrapper
struct UserValidation {
    private var name: String
    
    init() { self.name = "" }
    
    var wrappedValue: String {
        get { name }
        set {
            if newValue.count > 5 {
                self.name = newValue
                print("Valid name")
            } else {
                print("Error")
            }
        }
    }
}

struct UserForm {
    @UserValidation var userName: String
}

var userForm = UserForm()
userForm.userName = "SwiftBeta"

userForm.userName

//: [Next](@next)
