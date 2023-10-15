import UIKit

// Classes representando objetos do mundo real
class Car {
    var brand: String
    var model: String
    
    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
    
    func startEngine() {
        print("Starting the engine of \(brand) \(model).")
    }
}

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sayHello() {
        print("Hello, I'm \(name) and I'm \(age) years old.")
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
var cars = [Car]()
cars.append(Car(brand: "Toyota", model: "Camry"))
cars.append(Car(brand: "Ford", model: "F-150"))

// Funções e Closures
let sayHelloFunction: (Person) -> Void = { person in
    print("Hello from \(person.name)!")
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

