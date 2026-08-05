for i in 1...5 {
    print("this is number \(i)")
}

let names = ["Aga", "Antonio", "Rody"]
for name in names {
    print("Hello, \(name)")
}

for letter in "ABCDEFG" {
    print("The letter is \(letter)")
}

for (index, letter) in "ABCDEFG".enumerated() {
    print("\(index): \(letter)")
}

let vehicles = ["unicycle": 1, "bicycle": 2, "tricycle": 3, "quad bike": 4]
for(vehicleName, wheelCount) in vehicles {
    print("A \(vehicleName) has \(wheelCount) wheels")
}

let animals = ["Lion", "Tiger", "Elephant", "Giraffe", "Bear"]
for index in 0..<animals.count {
    print("\(index + 1). \(animals[index])")
}


