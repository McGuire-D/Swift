import UIKit
/*
Day 1 Hacking with swift

Lesson 1: Variables
 */

var str = "Hello, playground"

str = "Goodbye"

/*
 Lesson 2: Strings and integers
 */

var age = 38

var chocolate = "Jello"

var populatiion = 8_000_000

/*
Lesson 3: Multi-line strings
 */

var str1 = """
This goes
over multiple
lines
"""

var str2 =  """
This goes \
over multiple \
lines
"""

/*
 Lesson 4: Doubles and booleans
 */

var pi = 3.141

var awesome = true

/*
 Lesson 5: String interpolation
 */

var score = 85

var str3 = "Your score was \(score)"

var results = "The test results are: \(str)"

/*
 Lesson 6: Constants
 immutable variables
 */

let taylor = "swift"

/*
 Lesson 7: Type annotations
 */

let str4 = "Hello,Playground"
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

/*
Lesson 8: Arrays
*/

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john,paul,george,ringo]
 
beatles[1]

/*
Lesson 9: Sets
 */

let colors = Set(["red","green","blue"])
let colors2 = Set(["red","green","blue","red","blue"])

/*
Lesson 10: Tuples
*/

var name = (first: "Jimmy", last:"Dean")
name.0
name.first

/*
Lesson 11: Arrays vs sets vs tuples
 */

let address = (house: 555, street: "Jimmy Dean Avenue", city: "Nashville")
let set = Set(["aardvark", "astronaut", "azalea"])
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

/*
Lesson 12: Dictionaries
 */

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeren": 1.73
]
heights["Taylor Swift"]

/*
Lesson 13: Dictionary default values
 */

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte", default:"unkown"]

/*
 LESSON 14: Creating empty collections
 */
