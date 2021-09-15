//: [Previous](@previous)
import Foundation

/*:
 # Automatic Reference Counting
  Podéis encontrar el post aquí https://www.loopinfinito.io/automatic-reference-counting-en-swift/
*/

class Person {
    let name: String

    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }

    deinit {
        print("\(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "SwiftBeta")

reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil
reference3 = nil

/*:
 ## Strong
*/

class PersonWithApartment {
    let name: String
    var apartment: Apartment?

    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }

    deinit {
        print("\(name) is being deinitialized")
    }
}

class Apartment {
    let unit: String
    var tenant: PersonWithApartment?

    init(unit: String) {
        self.unit = unit
        print("\(unit) is being initialized")
    }

    deinit {
        print("Apartment \(unit) is being deinitialized")
    }
}

var john: PersonWithApartment?
var unit4A: Apartment?

john = PersonWithApartment(name: "John Applessed")
unit4A = Apartment(unit: "4A")

john!.apartment = unit4A
unit4A!.tenant = john

john = nil
unit4A = nil

/*:
 ## Weak
*/

class PersonWithApartmentAndWeak {
    let name: String
    var apartment: ApartmentAndWeak?
    
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

class ApartmentAndWeak {
    let unit: String
    weak var tenant: PersonWithApartmentAndWeak?
    
    init(unit: String) {
        self.unit = unit
        print("\(unit) is being initialized")
    }
    
    deinit {
        print("Apartment \(unit) is being deinitialized")
    }
}

var johnWeak: PersonWithApartmentAndWeak?
var unit4AWeak: ApartmentAndWeak?

johnWeak = PersonWithApartmentAndWeak(name: "John Applessed")
unit4AWeak = ApartmentAndWeak(unit: "4A")

johnWeak!.apartment = unit4AWeak
unit4AWeak!.tenant = johnWeak

//johnWeak = nil
unit4AWeak = nil

//: [Next](@next)
