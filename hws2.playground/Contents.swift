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
