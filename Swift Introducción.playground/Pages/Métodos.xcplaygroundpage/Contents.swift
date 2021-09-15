//: [Previous](@previous)
import Foundation

/*:
 # Métodos
  Podéis encontrar el post aquí https://www.swiftbeta.com/metodos-en-swift/
*/

class Worker {
    var count = 0
    
    func increment() {
        count += 1
    }
    
    func increment(by amount: Int) {
        count += 1
    }
    
    func reset() {
        count = 0
    }
}

let worker = Worker()
worker.increment()
worker.increment()

worker.count


/*:
  ## La propiedad Self
*/

class WorkerWithSelf {
    var count = 0
    
    func increment() {
        self.count += 1
    }
    
    func increment(by amount: Int) {
        self.count += 1
    }
    
    func reset() {
        self.count = 0
    }
}

/*:
  ## Métodos de Tipo
*/

class WorkerWithStaticFunctions {
    var count = 0
    
    static func printMessage() {
        print("Worker Type Method")
    }
}

WorkerWithStaticFunctions.printMessage()

//: [Next](@next)
