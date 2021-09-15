/*:
 # Bienvenido a Introducción a Swift
 El primer capítulo es Xcode Playgrounds y podéis encontrar el post aquí https://www.swiftbeta.com/playgrounds/
 */
import Foundation
import UIKit
import PlaygroundSupport

// El siguiente código muestra como podemos crear un UIViewController y ir modificando la vista en tiempo real.
class MyViewController: UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
}

PlaygroundPage.current.liveView = MyViewController()

// Printar el valor
let constant = "SwiftBeta"
print(constant)

// Podemos comentar código añadiendo // al inicio de cada línea o bloques de código con /* */
//let anotherConstant = "Blog"

/*
let constant = "SwiftBeta"
print(constant)
*/


// Podemos mostrar los valores en forma de lista
let values = [1, 10, 50, 20, 30, 80, 100]

// O si queremos mostrarlos con una gráfica podemos usar map
values.map { $0 }



//: [Next](@next)
