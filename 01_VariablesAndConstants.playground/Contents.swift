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
var grade: Character = "A" // Character
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

