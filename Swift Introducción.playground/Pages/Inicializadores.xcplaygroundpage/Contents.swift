//: [Previous](@previous)
import Foundation

/*:
 # Inicializadores
  Podéis encontrar el post aquí https://www.swiftbeta.com/inicializacion-en-swift/
*/


/*:
 ## Inicializadores
*/

struct User {
    var name: String
    
    init() {
        name = "SwiftBeta"
    }
}

var user = User.init()
print("The default user is \(user.name)")

/*:
 ## Propiedades con valores por defecto
*/

struct Coworker {
    var name = "SwiftBeta"
}

let coworker = Coworker()
print("The default coworker is \(coworker.name)")


/*:
 ## Personalizar la iniciación
 ### Parámetros de inicialización
*/

struct Database {
    var name: String
    
    init(withName name: String) {
        self.name = name
    }
    
    init(_ name: String) {
        self.name = name
    }
}

let database = Database(withName: "mobile")
let mobileDatabase = Database("mobile")


/*:
 ## Delegar la inicialización
*/

struct City {
    let name: String
    let countries: [String]
    
    init(name: String, countries: [String]) {
        self.name = name
        self.countries = countries
    }
    
    init(name: String) {
        self.init(name: name, countries: [])
    }
}

let city = City(name: "New York")

/*:
 ## Ejemplos Designated y Convenience Initializers
*/

class Food {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}

let food = Food()
let foodWithName = Food(name: "Bacon")

class RecipeIngredient: Food {
    var quantity: Int
    
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

let oneMysteryItem = RecipeIngredient()
let oneBacon = RecipeIngredient(name: "Bacon")
let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)

/*:
 ## Inicializador que puede fallar
*/

enum Message: Int {
    case sent = 0
    case received
    case read
    
    init?(rawValue: Int) {
        switch rawValue {
        case 0:
            self = .sent
        case 1:
            self = .received
        case 2:
            self = .read
        default:
            return nil
        }
    }
}

//: [Next](@next)
