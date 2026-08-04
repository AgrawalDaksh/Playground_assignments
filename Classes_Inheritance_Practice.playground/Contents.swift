class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func changeName(name: String) {
        self.name = name
    }
    func printName() {
        print("Name of a person \(self.name)")
    }
}



let firstperson = Person(name: "Daksh")
var secondperson = firstperson

//print(firstperson.name)
//firstperson.sayHello()

secondperson = Person(name: "Atharva")
print("First Person \(firstperson.name)")
print("Second Person \(secondperson.name)")

class Vehicle {
    var currentSpeed: Double = 0.0
    
    /*init(currentSpeed: Double) {
        self.currentSpeed = currentSpeed
    }*/
    
    var description: String {
        "travelling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() {
        
    }
}

let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true

bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")

class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)")

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo!")
    }
}

let train = Train()
train.makeNoise()


class Car: Vehicle {
    var gear = 1
    override var description: String {
        super.description + " in gear \(gear)"
    }
}
let car = Car()
car.gear = 4
car.currentSpeed = 50.0
print("Car: \(car.description)")



class person {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

class Student: person {
    var favouriteSubject: String
    init(name: String, favouriteSubject: String) {
        self.favouriteSubject = favouriteSubject
        super.init(name: name)
    }
}
let student = Student(name: "Daksh", favouriteSubject: "Maths")
print("My name is", student.name, "and my favourite subject is", student.favouriteSubject)

