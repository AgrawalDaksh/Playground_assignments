func add(a: Int, b: Int) {
    print(a+b)
}
add(a: 10, b: 20)

let add1 = { (a: Int, b: Int) in
print(a + b)
}

add1(10, 20)

let addClosure = { (a: Int, b: Int) in
    print(a+b)
}

addClosure(10,20)

func newClosure(a: Int, b: Int, addClosure: (Int, Int) -> Int) {
    addClosure(a,b)
}

func calculate(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    var result = operation(a,b)
    return(a+b)
}

calculate(a: 10, b: 20) {
    $0 * $1
}

//let sortedTracks = tracks.sorted { (firstTrack: Track, secondTrack: Track) -> Bool in
//    return firstTrack.trackNumber < secondTrack.trackNumber
//}

//let sortedTracks = tracks.sorted {
//    return $0.starRating < $1.starRating
//}

/*let firstNames = ["Alex", "Ben", "Caleb", "Duke"]

var fullNames: [String] = []

for name in firstNames {
    let fullName = name + " Smith"
    fullNames.append(fullName)
    print(fullName)
}*/

/*let firstNames = ["Alex", "Ben", "Caleb", "Duke"]

let fullNames = firstNames.map { (name) -> String in
    return name + " Smith"
}*/

let firstNames = ["Alex", "Ben", "Caleb", "Duke"]

let fullNames = firstNames.map {
    $0 + " Smith"
}

/*let numbers = [4, 8, 15, 16, 23, 42]

let numbersLessThan20 = numbers.filter { (number) -> Bool in
    print(number < 20)
    return number < 20
}*/

/*let numbers = [4, 8, 15, 16, 23, 42]

let numbersLessThan20 = numbers.filter { $0 < 20 }
*/

/*let numbers = [8,6,7,5,3,0,9]

var total = 0

for number in numbers {
    total = total + number
}*/

let numbers = [8,6,7,5,3,0,9]

let total = numbers.reduce(0) { (currentTotal, newValue) -> Int in
    return currentTotal + newValue
}

let nums = [8, 6, 7, 5, 3, 0, 9]

let tot = nums.reduce(0, +)
