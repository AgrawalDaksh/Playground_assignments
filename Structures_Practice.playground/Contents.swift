import UIKit

struct person {
    var pname: String = "Daksh"
    
    func sayHello(){
        print("Hello, \(pname)")
    }
}

var person1 = person()
print(person1.pname)
print(person1.sayHello())

struct BankAccount {
    var accountnumber: Int
    var balance: Double = 0
}

let newaccount = BankAccount(accountnumber: 6346, balance: 0)
let tranferredaccount = BankAccount(accountnumber: 6346)

struct Temperature {
    var celsius: Double
}
let temp = Temperature(celsius: 30.0)

let farenheitValue = 98.6
let celsiusValue = (farenheitValue - 32) / 1.8

let newTemperature = Temperature(celsius: celsiusValue)

print(newTemperature)

struct Temp {
    var Celsius: Double
    
    init(Celsius: Double) {
        self.Celsius = Celsius
    }
    
    init(Farenheit: Double) {
        Celsius = (Farenheit - 32) * 5/9
    }
}

struct Size {
    var width: Double
    var height: Double
    
    func area() -> Double {
        width * height
    }
}

var someSize = Size(width: 5.5, height: 5.5)

let area = someSize.area()

print(area)

struct Odometer {
    var count: Int = 0
    
    mutating func increment() {
        count += 1
    }
    
    mutating func increment(by amount: Int) {
        count += amount
    }
    
    mutating func reset() {
        count = 0
    }
}

var odometer = Odometer()
odometer.increment()
odometer.increment(by: 15)
print(odometer.count)
odometer.reset()
print(odometer.count)


struct tempz {
    var cel: Double
    
    var far: Double {
        cel * 1.8 + 32
    }
    
    var kel: Double {
        cel + 273.15
    }
}

let curtempz = tempz(cel: 0.0)
print(curtempz.far)

let curtemp = tempz(cel: 0.0)
print(curtemp.kel)


struct StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

var steps = StepCounter()
steps.totalSteps = 400
steps.totalSteps = 1000


struct Tempz {
    static let boilingPoint = 100.0
    
    static func convertedFromFahrenheit(_ temperatureInFahrenheit: Double) -> Double {
        (((temperatureInFahrenheit - 32) * 5) / 9)
    }
}

let boilingPoint = Tempz.boilingPoint

let currentTemperature = Tempz.convertedFromFahrenheit(99)

let positiveNumber = abs(-4.14)

print(boilingPoint)


var somesize = Size(width: 250, height: 1000)
var anotherSize = somesize

somesize.width = 500

print(somesize.width)
print(anotherSize.width)

