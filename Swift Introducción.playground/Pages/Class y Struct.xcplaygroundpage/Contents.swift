//: [Previous](@previous)
import Foundation

/*:
 # Class y Struct
  Podéis encontrar el post aquí https://www.swiftbeta.com/class-y-struct-en-swift/
*/

class SomeClass {
    // class definition goes here
}

struct SomeStruct {
    // structure definition goes here
}

let someClass = SomeClass()
let someStruct = SomeStruct()

/*:
  ## Inicializadores Memberwise para Struct
*/

class User {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

struct Coworker {
    var name: String
}

let user = User(name: "SwiftBeta")
var newUser = user

// Al cambiar el valor en newUser, el valor también cambia en user
newUser.name
newUser.name = "Blog"
user.name


struct Company {
    var user: User
}

user.name = "Swift"
let company = Company(user: user)
company.user.name
user.name = "SwiftBeta" // Actualizamos el valor de user.name desde fuera de la struct
company.user.name // El valor es SwiftBeta


//: [Next](@next)
