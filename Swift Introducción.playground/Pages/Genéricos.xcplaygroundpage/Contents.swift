//: [Previous](@previous)
import Foundation

/*:
 # Genéricos
  Podéis encontrar el post aquí https://www.swiftbeta.com/genericos-en-swift/
*/

/*:
 ## ¿Qué problema resuelven los genéricos?
*/

func swapTwoStrings(_ a: inout String, _ b: inout String) {
    let tempA = a
    a = b
    b = tempA
}

var valueA = "AA"
var valueB = "BB"

swapTwoStrings(&valueA, &valueB)

print("valueA A is \(valueA), and valueB B is \(valueB)")

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}


func swapTwoDoubles(_ a: inout Double, _ b: inout Double) {
    let tempA = a
    a = b
    b = tempA
}


/*:
 ## Funciones Genericas
*/

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let tempA = a
    a = b
    b = tempA
}

var myName = "SwiftBeta"
var myBrand = "Aprende a programar en Swift"

swapTwoValues(&myName, &myBrand)

var firstDayOfTheMonth = 1
var lastDayOfTheMonth = 30

swapTwoValues(&firstDayOfTheMonth, &lastDayOfTheMonth)


/*:
 ## Tipos Genéricos
*/

struct StackOfStrings {
    var items = [String]()
    
    mutating func push(_ item: String) {
        items.append(item)
    }
    
    mutating func pop() -> String {
        return items.removeLast()
    }
}

var stackOfString = StackOfStrings()
stackOfString.push("Swift")
stackOfString.push("Beta")
stackOfString.push("Aprender a Programar en Swift")

stackOfString.items

stackOfString.pop()


struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)

stackOfString.items

stack.pop()

/*:
 ## Tipos Genéricos con Restricciones
*/

import UIKit

struct StackOfViews<Element: UIView> {
    var items = [Element]()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

//var stackOfViews = StackOfViews<Int>()
//stackOfViews.push(1)
//stackOfViews.push(2)

var stackOfViews = StackOfViews<UIView>()
stackOfViews.push(UILabel())
stackOfViews.push(UIButton())
stackOfViews.push(UIView())

stackOfViews.items


/*:
 ## Associated Types
*/

protocol Container {
    associatedtype Item
    var items: [Item] { get set }
    mutating func push(_ item: Item)
    mutating func pop() -> Item
}

struct StackAssociatedType<Element>: Container {
    typealias Item = Element
    var items = [Element]()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        items.removeLast()
    }
}

//: [Next](@next)
