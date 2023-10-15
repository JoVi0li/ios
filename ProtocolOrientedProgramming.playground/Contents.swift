import UIKit

// Protocolos definindo comportamentos
protocol Greetable {
    var name: String { get }
    func sayHello()
}

protocol Drivable {
    var brand: String { get }
    var model: String { get }
    func startEngine()
}

// Structs conformando aos protocolos
struct Person: Greetable {
    var name: String
    var age: Int
    
    func sayHello() {
        print("Hello, I'm \(name) and I'm \(age) years old.")
    }
}

struct Car: Drivable {
    var brand: String
    var model: String
    
    func startEngine() {
        print("Starting the engine of \(brand) \(model).")
    }
}

// Controles de Fluxo
let person1 = Person(name: "Alice", age: 30)
let person2 = Person(name: "Bob", age: 25)

if person1.age > person2.age {
    print("\(person1.name) is older than \(person2.name).")
} else {
    print("\(person2.name) is older than \(person1.name).")
}

// Coleções
var cars: [Drivable] = [Car(brand: "Toyota", model: "Camry"), Car(brand: "Ford", model: "F-150")]

// Funções e Closures
let sayHelloFunction: (Greetable) -> Void = { entity in
    entity.sayHello()
}

sayHelloFunction(person1)

// Enums e Structs
enum Weather {
    case sunny
    case rainy
    case cloudy
}

struct WeatherReport {
    var condition: Weather
    var temperature: Double
}

let todayWeather = WeatherReport(condition: .sunny, temperature: 25.0)

// Concorrências
DispatchQueue.global().async {
    print("This is running concurrently.")
}

