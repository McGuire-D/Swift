import UIKit

var str = "Hello, playground"

let colors = Set(["red", "green","blue"])

colors
// Dictionary
let heights = [
    "Taylor Swift": 1.1,
    "Steve Harvey": 9000
]

// Creating empty collections
var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()

var words = Set<String>()

var numbers = Set<Int>()
// Enumerations
let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result{
    case success
    case failure
    }
let result4 = Result.failure

// enum associated values
enum Activity{
    case board
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "Football")
// Enum raw values

enum Planet: Int{
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)
// Complex types summary

/*
Arrays, Sets, tuples and dictionares let you store strings and data
*/

import UIKit
// Arithmetic operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

/*
    Operator overloading, swift will not allow adding two things that do not make sense. So you
 will not be able to add a string to a floating number or integer.
*/
let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "fakers gonna"
let action = fakers + " fake"

let firstHalf = ["John" , "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

/*
 Compound assignmenty operators adding or subtracting to variables
 */

var score = 95
score -= 5

var quote = "The rain in spain falls mainly on the"
quote += "Spaniards"

/*
 Comparison Operators
 */

let thirdScore = 6
let fourthScore = 4

thirdScore == fourthScore
thirdScore != fourthScore

thirdScore > fourthScore
thirdScore < fourthScore

thirdScore <= fourthScore

/*
 Conditions using if else statments to make blackjack
 */

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces A lucky!")
} else if firstCard + secondCard == 21{
    print("Blackjack!")
} else {
    print("Regular cards")
}

/*
 Combining Conditions
 */

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18{
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("one of them is over 18")
}

/*
 The ternary operator
 */

let thirdCard = 11
let fourthCard = 10

print(thirdCard == secondCard ? "Cards are the same" : "Cards are different")

// if else example of ternary

if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards arte different")
}

/*
 Switch statments
 */

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

/*
 Range operators
 */
let score1 = 85

switch score1 {
case 0..<50:
    print("You failed badly. ")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

/*
 For loops
 */

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna")

for _ in 1...5 {
    print("play")
}

/*
 While loop
 */

var number = 1

while  number <= 20 {
    print(number)
    number += 1
}

print ("Ready or not, here I come!")

/*
 Repeat loop
 */

var numb3r = 1

repeat {
    print(numb3r)
    numb3r += 1
} while numb3r <= 20

print("Ready or not, here I come!")

/*
 while false {
    print("This is false")
    continue
}
*/
repeat {
    print("This is false")
} while false

/*
 Exiting multiple loops
 */
/*
var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
}

print("Blast Off!")
*/
/*
 exiting multiple loops
 */

outerLoop: for josh in 1...10 {
    for steve in 1...10 {
        let product = josh * steve
        print ("\(josh) * \(steve) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}


/*
 Skipping items
 */

for w in 1...10 {
    if w % 2 == 1 {
        continue
    }
    print(w)
}

/*
 Infinite loops
 */
/*
import UIKit

var counter = 0

while true{
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
    
}
*/
/*
 Writing a function
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
 Accepting parameters
 */

func square(number: Int) {
    print(number * number)
}

square(number: 8)

/*
 Returning values
 */


func newSquare(number1: Int) -> Int {
    return number1*number1
}

let result1 = newSquare(number1 : 8)
print(result1)


/*
 Parameter labels
 */

func square3(number2: Int) -> Int {
    return number*number
}

let result5 = square3(number2: 8)

func sayHello (to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")

/*
 Omitting parameter lables
 */

func greet (_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")

/*
 Default parameters
 */

func greet1(_ person1: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello,\(person1)!")
    } else {
        print("Oh no, it's \(person1) again ...")
    }
}

greet1("Taylor")
greet1("Taylor", nicely: false)

/*
 Variadic functions
 */

func square4( numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number*number)")
    }
}

square4(numbers: 1, 2, 3, 4, 5)

/*
 Writing throwing functions
 */

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws ->
    Bool {
        if password == "password" {
            throw PasswordError.obvious
        }

    return true
}

/*
 Running throwing functions
 */

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

/*
 Inout parameters
 */

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)


/*
 creating basic closures
 */

let driving = {
    print("I'm driving in my car")
}

var paintPicture = {
    print("Where are my watercolors Summer?")
}

let learnSwift = {
    print("Closures are like functions")
}
learnSwift()

let greetUser = {
    print("Oh hi Mark!")
}
greetUser()

var connectVPN = {
    print("Connected!")
}
connectVPN()

 let takeCruise = {
    print("A week of vacation!")
}
takeCruise()

let upgrade = {
    print("Upgrading...")
}
upgrade()

var castVote = {
    print("Ivoted!")
}
castVote()

/*
 Accepting parameters in a closure
 */


let driving1 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving1("London")


/*
 Returning values from a closure
 */


let driving2 = { (place: String) ->
    String in
    return("I'm going to \(place) in my car")
}

let message = driving2("London")

print(message)

/*
 Closures as parameters
 */

let driving3 = {
    print("I'm driving in my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving3)

/*
 Trailing closure syntax
 */

func travel1(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel1 {
    print("I'm driving in my car")
}

/*
 Using closures as parameters when they accept parameters
 */

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}


