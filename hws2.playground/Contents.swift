/*
Lesson 19: Operator overloading
 */

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna"
let actions = fakers + "fake"

let firstHalf = ["John","Ringo"]
let secondHalf = ["George","Ringo"]
let beatles = firstHalf+secondHalf

/*
Lesson 20: Compound assignment operators
 */

var score = 95
score -= 5

var quote = "The rain in spain falls mainly on the"
quote += "spainards"

/*
Lesson 21: Comparison operators
 */

let firstScore = 6
let secondScore = 4

firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore >= secondScore

/*
 Lesson 22: Conditions
 */

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Roadhouse!")
} else {
    print( "Regular cards")
}


/*
Lesson 23: Combining conditions
 */

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("Both are over 18")
}

/*
Lesson 24: The ternary operator
 */

let thirdCard = 11
let fourthCard = 10

print(thirdCard == fourthCard ? "Cards are the same" : "Cards are different")

if thirdCard == fourthCard{
    print("Cards are the same")
} else {
    print("Cards are different")
}

/*
 Lesson 25: Switch statements
 */

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Stay home and drink coco")
case "sunny":
    print("Where sunscreen and have fun")
default:
    print("I am the bamboozled")
}

/*
Lesson 26: Range operators
 */

let score1 = 85

switch score1 {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did great!")
default:
    print("You did great!")
}

/*
Lesson 27: For loops
 */
let count = 1...10

for number in count{
    print("Number is\(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("players gonna")

for _ in 1...5 {
    print("play")
}

/*
Lesson 28: While loops
 */

var number = 1

while number <= 20 {
    print(number)
    number += 1
}

/*
 Lesson 29: Repeat loops
 */


var number1 = 1

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here i come!")

while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false

/*
Lesson 30: Exiting loops
 */

var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored. lets go now!")
        break
    }
    countDown -= 1
}

print("Blast off!")

/*
Lesson 31: Exiting mutiple loops
 */

outerLoop: for i in 1...10{
    for j in 1...10{
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("it's a bullseye!")
            break outerLoop
        }
    }
}

/*
Lesson 32: Skipping items
 */

for i in 1...10{
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}


/*
Lesson 33: Infinite loops
 */

var counter = 0

while true{
    print(" ")
    counter += 1
    
    if counter == 273{
        break
    }
}

/*
Lesson 34: Writing functions
 */

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp()

/*
Lesson 35: Accepting parameters
 */

print("Hello, World!")


func square(number: Int){
    print(number*number)
}

square(number: 8)

/*
Lesson 36: Returning values
 */

func square1(number: Int) -> Int {
    return number * number
}

let result = square1 (number: 8)
print(result)

/*
Lesson 37: Parameter labels
 */


func square2(number: Int) -> Int {
    return number * number
}


let result1 = square2(number: 8)

func sayHello(to name: String) {
    print("Hello, \(name)!")
}


sayHello(to: "Taylor")

/*
 Lesson 38: Omitting parameter lables
 */

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Stephen")

/*
 Lesson 39: Default parameters
 */

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    }else{
        print("Oh no, its \(person) again...")
    }
}

greet("Chris Hemsworth")
greet("Chris Hemsworth", nicely: false)



/*
Lesson 40: Variadic functions
 */

print("Haters", "gonna", "hate")

func square2(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square2(numbers: 1, 2, 3, 4, 5)

/*
Lesson 41: writing throwing functions
 */

enum PasswordError: Error {
    case obvious
}


func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}


/*
Lesson 42: Running throwing functions
 */


enum PasswordError1: Error {
    case obvious
}


func checkPassword1(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

do {
    try checkPassword("password")
    print("That passoword is good")
} catch {
    print("You can't use that password.")
}

/*
Lesson 43: inout parameters
 */


func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)


/*
Lesson 44: Creating basic closures
 */


let driving = {
    print("I'm driving in my car")
}

driving()


/*
Lesson 45: Accepting parameters in a closure
 */


let driving1 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving1("London")

/*
Lesson 46: Returning values from a closure
 */


let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

let driving2WithReturn = { (place: String) -> String in
    return "I'm goint to \(place) in my car"
}

let message = driving2WithReturn("London")

print(message)

/*
Lesson 47: Closures as parameters
 */


let driving3 = {
    print("I'm driving in my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

/*
Lesson 48: Trailing closure syntax
 */

func travel1(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel1() {
    print("I'm driving in my car")
}

travel1 {
    print("I'm driving in my car")
}




/*
Lesson 49: Using closures as parameters when they accept parameters
 */

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}



/*
Lesson 50: Using closures as parameters when they return values
 */


func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}



/*
Lesson 51: Shorthand parameter names
 */

func travel1(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}


travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


travel { place -> String in
    return "I'm going to \(place) in my car"
}


travel { place in
    return "I'm going to \(place) in my car"
}


travel { place in
    "I'm going to \(place) in my car"
}


travel {
    "I'm going to \($0) in my car"
}

/*
Lesson 52: Closures with multiple parameters
 */

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}



/*
Lesson 53: Returning closures from functions
 */


func travel2() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result2 = travel2()
result2("London")


let result2 = travel2()("London")
