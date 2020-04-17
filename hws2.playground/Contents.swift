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
