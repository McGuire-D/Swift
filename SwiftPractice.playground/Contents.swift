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
