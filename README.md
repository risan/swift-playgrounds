# Swift Playground

A collection of my personal playgrounds to learn [Swift](https://developer.apple.com/swift/).

## Table of Contents:

1. [Variables and Constants](#variables-and-constants)
2. [Functions](#functions)

## Variables and Constants

Playground file: [01VariablesAndConstants.playground](https://github.com/risan/swift-playgrounds/blob/master/01VariablesAndConstants.playground)

```swift
// ✨ VARIABLES

// Declaring a variable with integer type.
var myNumber: Int = 12

// Change the variable value.
myNumber = -120

// ❌ Cannot be initialized with the wrong data type value.
// var myNumber2: Int = 12.0

// ❌ Cannot be reassigned with different data type.
// myNumber = 12.1


// ✨ OTHER DATA TYPES

var percentage: Float = 98.5 // Float
var latitude: Double = 109.00012 // Double precision floating point number
var isAwesome: Bool = true // Boolean: true or false
var name: String = "John Doe" // String


// ✨ CONSTANTS

// Declaring a constant with integer type.
let PI: Float = 3.14

// ❌ The value cannot be changed.
// PI = 3.1423


// ✨ TYPE INFERENCE

// When declaring a variable or a constant, we actually don't need
// to specify the data type. Swift is smart enough to figure out
// the data type based on the initial value.

var someInt = 12
var someDouble = 12.0
var someBool = true
var someString = "Foo Bar"

// Also works for constant
let someConst = true


// ✨ TYPE CASTING

// We can convert some data type into another data type.
var intToFloat: Float = Float(17) // Become: 17.0
var intToString: String = String(17) // Become: "17"
var doubleToInt: Int = Int(175.7) // Become: 175
var doubleToString: String = String(65.7) // Become: "65.7"

// String can be converted to integer or floating numbers.
// But it must be "unwrapped" since the converted value can be "nil".

// 1. Using the optional type "?"
var stringToInt: Int? = Int("12") // Become: 12

stringToInt = Int("0015") // Become: 15
stringToInt = Int("-012") // Become: -12
stringToInt = Int("12.0") // Become: nil
stringToInt = Int("3.14") // Become: nil
stringToInt = Int("abcd") // Become: nil

// 2. Using the force-unwrap "!"
// This way the code execution will be aborted when the coverted value is "nil"
var stringToIntForce: Int = Int("12")!

// ❗️ Code execution will be aborted.
// stringToIntForce = Int("abcd")!
```

## Functions

Playground file: [02Functions.playground](https://github.com/risan/swift-playgrounds/blob/master/02Functions.playground)

```swift
// ✨ FUNCTIONS

// Create a function named "hello"
func hello() {
    print("Hello World!")
}

// Calling the function hello
hello()


// ✨ FUNCTION WITH PARAMETERS

// Function with one named parameter.
func sayHello(to: String) {
    print("Hello \(to)!")
}

sayHello(to: "John Doe")

// ❌ Must use the parameter name.
// sayHello("John Doe")

// Function with multiple named parameters.
func introduce(name: String, age: Int) {
    print("Hello my name is \(name) and I'm \(age) years old.")
}

introduce(name: "John Doe", age: 23)

// Omitting the named parameters.
func sayHi(_ to: String) {
    print("Hi \(to)")
}

sayHi("John Doe")

// ❌ Cannot use parameter name.
// sayHi(to: "John Doe")

// Omitting multiple named parameters.
func introducePerson(_ name: String, _ age: Int) {
    print("Hi my name is \(name) and I'm \(age) years old.")
}

introducePerson("John Doe", 23)

// Omitting named parameter partially.
func sayAye(_ name: String, age: Int) {
    print("Aye my name is \(name) and I'm \(age) years old.")
}

sayAye("John Doe", age: 23)

// We can create functions with the same name but different
// paramaters configuration.
func welcome() {
    print("Welcome to the world of tomorrow!")
}

func welcome(name: String) {
    print("Welcome \(name)!")
}

func welcome(_ name: String) {
    print("Welcome \(name)!")
}

func welcome(_ name: String, to: String) {
    print("Welcome \(name) to \(to)!");
}

welcome() // Welcome to the world of tomorrow!
welcome(name: "John Doe") // Welcome John Doe!
welcome("Jane Diane") // Welcome Jane Diane!
welcome("John Doe", to: "Jurassic Park") // Welcome John Doe to Jurassic Park!

// FUNCTION WITH RETURN VALUE
func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

sum(10, 5) //  15
```

## License

MIT © [Risan Bagja Pradana](https://risan.io)
