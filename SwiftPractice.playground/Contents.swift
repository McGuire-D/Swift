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

var number = 1

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false

/*
 Exiting multiple loops
 */

var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
}

print("Blast Off!")

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

import UIKit

var counter = 0

while true{
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
    
}
