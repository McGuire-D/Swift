import UIKit

/*
Lesson 55: Creating your own structs
 */

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"

/*
Lesson 56: Computed properties
 */

struct Sport1 {
    var name: String
}


struct Sport2 {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

/*
Lesson 57: Property observers
 */

struct Progress1 {
    var task: String
    var amount: Int
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}


/*
Lesson 58: Methods
 */


struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}


let london = City(population: 9_000_000)
london.collectTaxes()


/*
Lesson 59: Mutating Methods
 */


struct Person {
    var name : String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}


var person = Person(name: "Ed")
person.makeAnonymous()


/*
Lesson 60: Properties and method if strings
 */

let sven = "Do or do not, there is no try."

print(sven.count)

print(sven.hasPrefix("Do"))

print(sven.uppercased())

print(sven.sorted())


/*
Lesson 61: Properties of methods and arrays
 */


var toys = ["Woody"]


print(toys.count)


toys.append("Buzz")


toys.firstIndex(of: "Buzz")


print(toys.sorted())


toys.remove(at: 0)



/*
Lesson 62: Initializers
 */

struct User {
    var username: String
}

var user = User(username: "Twostraws")


struct User1 {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user1 = User1()
user.username = "Twostraws"



/*
Lesson 63: Referring to the current instances
 */

struct Person2 {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}


/*
Lesson 64: Lazy properties
 */


struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}


struct Person3 {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person3(name: "Ed")

/*
lazy var familyTree = FamilyTree()
*/
ed.familyTree


/*
Lesson 65: Static properties and methods
*/


struct Student {
    var name: String

    init(name: String) {
        self.name = name
    }
}

let ed1 = Student(name: "Ed")
let taylor = Student(name: "Taylor")

struct Student1 {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student1.classSize += 1
    }
}

print(Student1.classSize)




/*
Lesson 66: Access control
 */


struct Person4 {
    var id: String

    init(id: String) {
        self.id = id
    }
}

let ed2 = Person4(id: "12345")


struct Person5 {
    private var id: String

    init(id: String) {
        self.id = id
    }
}


struct Person6 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}


/*
Lesson 67:
 */

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")



/*
Lesson 68: Class inheritance
 */

class Dog1 {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class Poodle: Dog1 {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}


/*
Lesson 69: Overriding methods
 */

class Dog2 {
    func makeNoise() {
        print("Woof!")
    }
}


class Poodle1: Dog2 {
}

let poppy1 = Poodle1()
poppy1.makeNoise()


class Poodle2: Dog2 {
    override func makeNoise() {
        print("Yip!")
    }
}

let jimmy = Poodle2()
jimmy.makeNoise()

