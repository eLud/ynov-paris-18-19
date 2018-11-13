
import Foundation

let str = "Hello, playground"

//str = "Hello"

let a = 5
let b = 2
let result = Double(a / b)


let numberOfWheels = 2
switch numberOfWheels {
case 1:
    print("Unicycle")
case 2:
    print("Bicycle")
    fallthrough
case 3:
    print("Tricycle")
case 4:
    print("Quadcycle")
default:
    print("That's a lot of wheels!")
}

let temperature = 70
if temperature >= 65 && temperature <= 75 {
    print("The temperature is just right.")
} else if temperature < 65 {
    print("It's too cold.")
} else {
    print("It's too hot.")
}

switch temperature {
case ...64:
    print("It's too cold.")
case 65...75:
    print("The temperature is just right.")
case 76...:
    print("It's too hot.")
default:
    print("Not supposed to happen")
}

let 🚀🛸 = """
    Q: Why did the chicken cross the road?
    A: To get to the other side!
    """

print(🚀🛸)

let name = "Rick"
let age = 30
print(name + " is " + "\(age)" + "years old")

func triple(value: Int) {
    let result = value * 3
    print("If you multiply \(value) by 3, you'll get \(result).")
}

triple(value: 10)

func multiply(firstNumber: Int, secondNumber: Int) -> Int {
    let result = firstNumber * secondNumber
    print("The result is \(result).")
    return result
}

multiply(firstNumber: 5, secondNumber: 10)

func sayHello(to firstPerson: String, and secondPerson: String) {
    print("Hello \(firstPerson) and \(secondPerson)")
}

sayHello(to: "Luke", and: "Dave")




func remove(_ employeeID: Int) {
    employeeID
}

func remove(truc matricule: Int) {
    matricule
}

remove(20)

var array = ["jgkjgfk"]
array.append("cdgdv")
array.append(contentsOf: ["kjgvkgvk", "kgougk"])

array.remove(at: 0)

//func increment() {
//    increment(step: 1)
//}

func increment(step: Int = 1) {
    print(step)
}

increment()
increment(step: 10)

print(array, a, b)
print(array, a, b)

struct Odometer {

    var count: Int = 0 // Assigns a default value to the 'count' property.

    mutating func increment() {
        count += 1
    }

    mutating func increment(by amount: Int) {
        count += amount
    }

    mutating func reset() {
        self.count = 0
    }

    mutating func doubleMileage() -> Int {
        return count * 2
    }
}

var myOdometer = Odometer(count: 100)
myOdometer.doubleMileage()

struct Point {
    var x: Double
    var y: Double
}

class Size {
    var width: Double
    var height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}

var someSize = Size(width: 250, height: 1000)
var anotherSize = someSize

someSize.width = 500

someSize
anotherSize

struct Rect {
    var origin: Point
    var size: Size

    // Computed property : variable, cvad une caractéristique
    var center: Point {
        let centerX = origin.x + size.width / 2
        let centerY = origin.y + size.height / 2
        return Point(x: centerX, y: centerY)
    }

    // Méthode : action sur le type
    func centrer() {
//        let centerX = origin.x + size.width / 2
//        let centerY = origin.y + size.height / 2
//        return Point(x: centerX, y: centerY)
    }
}

struct Temperature {

    // Temp de référence, seule temp stockée
    var celsius: Double

    // Comp property with get set
    var fahrenheit: Double {
        get {
            return celsius * 1.8 + 32
        }

        set {
            celsius = (newValue - 32) / 1.8
        }
    }

    // Comp property with get only
    var kelvin: Double {
        return celsius + 273.15
    }

    init() {
        self.celsius = 0
    }

    init(celsius: Double) {
        self.celsius = celsius
    }

    init(fahrenheit: Double) {
        // To fix the error of self not being init, init celsius first
        celsius = 0
        // Then assign the temp
        self.fahrenheit = fahrenheit
    }

    init(kelvin: Double) {
        self.celsius = kelvin - 273.15
    }
}

let temp = Temperature(fahrenheit: 10)

temp.celsius
temp.fahrenheit
temp.kelvin

struct Game {

    var numberOfLife: Int = 100 {

        //Executed before the assign
        willSet {

        }

        //Executed after the assign
        didSet {
            print(numberOfLife)
            if numberOfLife <= 0 {
                isGameOver = true
            }
        }
    }
    var isGameOver: Bool = false {
        didSet {
            if isGameOver {
                print("Game is over!")
            }
        }
    }
}

var game = Game()
game.numberOfLife = 50
game.numberOfLife = 20
game.numberOfLife -= 30

struct Dish {
    var name: String
    var price: Float

}

//class Restaurant {
//    var name: String
//    var address: String
//    var menu: [Dish]
//
//    init(name: String, address: String, menu: Dish) {
//
//    }
//}

let pizza = Dish(name: "Pizza", price: 8)
//let restaurant = Restaurant(name: "Super Pizza")


var tabVide: [String] = []
tabVide.append("<trvjf")
var tabPasVide = [2,6,8,7.46]

var names = ["Anne", "Gary", "Keith"]
var otherNames = ["Robert", "Luc", "Thomas"]

let concat = names + otherNames

//recup
names[0]
names[0] = "Toto"
names[0]

names.append("Ludovic")
names.insert("Paul", at: 2)

var scores = ["Richard": 500, "Luke": 400, "Cheryl": 800]

scores["Richard"]
scores["Richard"] = 600

scores["Toto"] = 1000
scores.updateValue(0, forKey: "Toto")
scores["Toto"]


// For each
for name in concat {
    print(name)
}

// For "classique"
for _ in 0...10 {
    print("Hello")
}

// For "classique"
for i in 0..<10 {
    print(i)
}

for truc in scores {
    print(truc.key)
    print(truc.value)
}

for caractere in "Hello World !" {
    print(caractere)
}

func learnSwift() {
    swiftMaster = true
}

var swiftMaster = false
while !swiftMaster {
    learnSwift()
}

repeat {
    learnSwift()
} while !swiftMaster

//var responseCode: Optional<Int> = nil
var responseCode: Int? = nil
responseCode = 404
responseCode = nil

print(responseCode)


func handleResponseCode(_ code: Int) {

}

if responseCode != nil {
    let result2 = responseCode! * 2
    handleResponseCode(responseCode!)

} else {
    print("No response code")
}


if responseCode != nil {
    let code = responseCode!
    code*2
    handleResponseCode(code)
}
if let code = responseCode {
    code*2
    handleResponseCode(code)
}

print(responseCode?.advanced(by: 6))

let advanced = responseCode?.advanced(by: 6)

if let intValue = Int("1234567") {
    intValue*2
} else {
    print("can't convert string to int")
}

class Animal {}
class Dog: Animal {}
class Cat: Animal {}

func getClientAnimal() -> Animal {

    return Cat()
}

func walk(dog: Dog) {}
func cleanLitter(cat: Cat) {}

if let aDog = getClientAnimal() as? Dog {
    walk(dog: aDog)
} else if let aCat = getClientAnimal() as? Cat {
    cleanLitter(cat: aCat)
}

//let anotherDog = getClientAnimal() as! Dog
var items: [Any] = [5, "Bill", 6.7, Dog(), true, ["a", "b"], Cat()]



var birthdayIsToday = true
var invitedGuests = 3
var cakeCandlesLit = false

func singHappyBirthday() {
    if birthdayIsToday {
        if invitedGuests > 0 {
            if cakeCandlesLit {
                print("Happy Birthday to you!")
            } else {
                print("The cake candle's haven't been lit.")
            }
        } else {
            print("It's just a family party.")
        }
    } else {
        print("No one has a birthday today.")
    }
}


func sing() {

    if !birthdayIsToday {
        print("No one has a birthday today.")
        return
    }

    if invitedGuests <= 0 {
        print("It's just a family party.")
        return
    }

    if !cakeCandlesLit {
        print("The cake candle's haven't been lit.")
        return
    }

    print("Happy Birthday to you!")

}

func sing2() {

    guard birthdayIsToday else { return }
    guard invitedGuests > 0 else { return }
    guard cakeCandlesLit else { return }

    print("Happy Birthday to you!")
}


func divide(_ number: Double, by divisor: Double) {

    guard divisor != 0.0 else { return }
    let result = number / divisor
}

func divide2(_ number: Double, by divisor: Double) {

    if divisor != 0.0 {
        let result = number / divisor
    }
}

if let first = items[0] as? Int {
    first  * 2
}

guard let first = items[0] as? Int else { fatalError() }
first * 2


enum TrainStatus {
    case onTime
    case delayed(delay: Int)
    case cancelled(reason: String?, substitutionMessage: String)
    case unknwown
}

var status = TrainStatus.onTime
status = .delayed(delay: 5)
status = .delayed(delay: 15)
status = .unknwown
status = .cancelled(reason: nil, substitutionMessage: "")






