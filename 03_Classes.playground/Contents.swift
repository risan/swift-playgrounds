// ✨ CLASS PROPERTIES AND METHODS

class Square {
    // Class's property
    var color: String = "red"
    
    // Class's method
    func printDescription() {
        print("I am a \(color) square.")
    }
    
    func getArea(length: Int) -> String {
        let area = length * length
        
        return "\(color) square with an area of \(area)."
    }
}

// Create a new Square instance.
let mySquare: Square = Square()

// Calling instance method.
mySquare.printDescription() // I am a red square

// Accessing instance property.
// Though mySquare itself is a constant, we can mutate its property.
mySquare.color = "white"
mySquare.printDescription() // I am a white square.

// Instance method with parameter.
mySquare.getArea(length: 10) // White square with an area of 100.


// ✨ CLASS INITIALIZATION PARAMETER

class TheSquare {
    var length: Int
    var color: String = "red" // Property with default value.
    
    init(length: Int, color: String) {
        // If the property has the same name as the given paramater
        // use the "self" keyword.
        self.length = length
        self.color = color
    }
    
    // Instead of using "self", we can also rename the given parameter
    init(length sideLength: Int) {
        length = sideLength
    }
    
    init(_ length: Int) {
        self.length = length
    }
    
    func printDescription() {
        print("A \(color) square with length of: \(length).")
    }
}

var yellowSquare = TheSquare(length: 10, color: "Yellow")
yellowSquare.printDescription() // A Yellow square with length of: 10.

var redSquare = TheSquare(length: 20)
redSquare.printDescription() // A red square with length of: 20.

redSquare = TheSquare(30)
redSquare.printDescription() // A red square with length of: 30.


// ✨ STATIC PROPERTIES AND METHODS
// Use "static" keyword to indicate that the properties or methods
// are belong to the class itself, not the instance.
class Car {
    // Class's constant.
    static let tires = 4
    
    // Class's property.
    static var totalCreated = 0
    
    var color: String
    
    init(color theColor: String) {
        color = theColor
        Car.totalCreated += 1
    }
    
    // Class's method.
    static func isAutomobile() -> Bool {
        return true
    }
}

// Access the class's properties and methods directly,
// without having to create an instance.
Car.tires // 4
Car.totalCreated // 0
Car.isAutomobile() // true

// Cannot mutate the class's constant
// Car.tires = 5

let redCar = Car(color: "red")
Car.totalCreated // 1

// You can't access the class's properties and methods from
// an instance.
// redCar.tires

let yellowCar = Car(color: "yellow")
Car.totalCreated // 2
