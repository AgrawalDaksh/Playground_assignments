var a = 10
var b = 10

print(a == b)

class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var p1 = Person(name: "Daksh")
var p2 = Person(name: "Daksh")
var p3 = p1

print(p1 === p3)

var temp = 100

if(temp >= 100){
    print("Boiling water")
}
else {
    print("The water is not boiling yet.")
}

var user = "daksh"
var password = 123456

if(user == "daksh" && password == 123456){
    print("Login successful")
}
else {
    print("Login unsuccessful")
}

var value = 1
switch value {
    case 1: print("one")
    fallthrough
    case 3: print("three")
    case 2: print("two")
    default: print("wrong")
}

let numberOfWheels = 2
switch numberOfWheels {
    case 0:
        print("Something's wrong")
    case 1:
        print("Unicycle")
    case 2:
        print("Bicycle")
    fallthrough
    case 3:
        print("Tricycle")
    fallthrough
    case 4:
        print("Quadcycle")
    fallthrough
    default:
        print("That's a lot of wheels!")
}

let character =  "z"
switch character {
    case "a", "b", "c", "x", "y", "z" :
        print("correct")
    default:
        print("wrong")
}

let distance = 10
switch distance {
    case 0...9:
        print("Your destination is close")
    case 10...99:
        print("Medium distance")
    case 100...999:
        print("Far away")
    default:
        print("Out of Range")
}

let temperature = 72
switch temperature {
case 65...75:
    print("Temperature is perfect")
case Int.min...65:
    print("It's chilly")
case 75...Int.max:
    print("It's warm")
default:
    print("It's hot")
}

var largest: Int
let e = 15
let f = 4

largest = e > f ? e : f
print(largest)
