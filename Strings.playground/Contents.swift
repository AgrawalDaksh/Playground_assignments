let greeting = "Hi!"
var anothergreeting = "Salutations!"

print(greeting)
print(anothergreeting)

//greeting = "Hello!"
anothergreeting = "Bonjour!"

var greet = """
    I'm a student of 3rd year, my name is Daksh.
    
    I'm a part of the iOS student developer program.
    """

print(greeting)
print(anothergreeting)
print(greet)

var string1 = "Yo!"
var string2 = string1

print(string1)
print(string2)

let string3 = "abc"
var string4 = "abc"

string3 == string4

var string5 = "Arigato\""

print(string5)

var mystring = ""

if mystring.isEmpty {
    print("The string is empty")
}

let string6 = "Hellooo"
let string7 = ", World!"
var mystring2 = string6 + string7
print(mystring2)
mystring2 += " Hello!"
print(mystring2)

let name = "Daksh"
let age = 20
let address = "Pune"

print("\(name) is \(age) years old.")

print(name, "is", age, "years old.")

var details = name + " is " + String(age) + " years old. He lives in " + address + "."
print(details)

let month = "January"
let othermonth = "January"
let lowercasemonth = "january"

if month == othermonth {
    print("they are the same")
}

if month == lowercasemonth {
    print("They are the same.")
}

let name1 = "Jimmy John"
if name1.lowercased() == "jiMMY joHN".lowercased() {
    print("Equal")
}

let greeet = "Helllo, world!"

print(greeet.hasPrefix("Helllo"))
print(greeet.hasSuffix("world!"))
print(greeet.hasSuffix("World!"))

let name2 = "Daksh"
//let count = name2.count
print(name2.count)

let password = "123456"
if(password.count < 8){
    print("Password is too short. Please enter atleast a 8 digit password!")
}


let fish = "🐡"

print("∞".count)
