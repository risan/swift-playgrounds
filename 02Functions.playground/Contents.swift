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
