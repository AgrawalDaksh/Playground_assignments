import UIKit

let firstName = "KaMaKshi"
let lastName = "Goyal"
let username = "KamaKshi_Goyal"
let password = "Swift@123"
let email = "kamakshi.goyal@mitwpu.edu.in"


//Task 1
let formattedFirstName = firstName.capitalized
let formattedLastName = lastName.capitalized

print("Welcome, \(formattedFirstName) \(formattedLastName)!")


//Task 2
if username.lowercased().contains(firstName.prefix(3).lowercased()) && username.contains("_") {
    print("Username is valid!")
}
else {
    print("Username not valid!")
}


//Task 3
if password.count >= 8 && password.contains("@"){
    print("Password is valid!")
}
else {
    print("Password is not valid")
}


//Task 4
if email.contains("@") && email.hasSuffix("edu.in"){
    print("Educational email verified.")
}
else{
    print("Educational email not verified.")
}


//Task 5
let first=password.prefix(1).lowercased()
switch first {
case "a","e","i","o","u":
    print("Password starts with a vowel.")
default:
    print("Password starts with a consonant, number, or symbol.")
}


//Task 6
if lastName.uppercased()==firstName.uppercased() {
    print("Equal")
}
else {
    print("Not equal")
}

var summary:String = ""
if summary.isEmpty{
    summary = "Registration Successful"
}

summary += "- Welcome to the iOS Development Centre!"
print(summary)
