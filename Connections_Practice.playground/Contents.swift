var array1: [Int] = [1, 2, 3, 4, 5]

var array2: [Any] = ["a", 1, 4, "b", 10, "10"]

let numbers = [4,5,6]
if numbers.contains(4) {
    print("Exists")
}

if array2.contains(where: { $0 is String}) {
    print("Exists")
}

if array2.contains(where: { ($0 as? String) == "10"}) {
    print("Existss")
}

var names = ["Andre", "Akbar", "Anthony"]
let firstName = names[0]
print(firstName)

names[1] = "Paul"
print(names)

var arr = ["a"]
arr.append("b")
arr += ["Anthony", "Joe"]
print(arr)

var names2 = ["Amy", "Lou", "Chelsea", "Dan"]
let chelsea = names2.remove(at: 2)
let dan = names2.removeLast()
print(names2)

names2.removeAll()
print(names2)

var firstarray = [1, 2, 3, 4, 5]
var secondarray = [6, 7, 8, 9, 10]

var mynewarray = firstarray + secondarray
print(mynewarray)

let array3 = [1,2,3]
let array4 = [4,5,6]
let containerarray = [array3, array4]
let firstArray = containerarray[0]
let firstelement = containerarray[0][0]
print(containerarray)
print(firstArray)
print(firstelement)

var scores = ["Richard": 500, "Luke": 400, "Cheryl": 800]

var dictionary = [String: Int]()
var mydictionary = Dictionary<String, Int>()
//var mydictionary: [String: Int] = [:]

var dict1 = ["a": 100, "b": 200]
dict1["c"] = 300
print(dict1["c"])
if let oldvalue = dict1.updateValue(1000, forKey: "a") {
    print("Updated")
}
print(dict1)

let players = Array(scores.keys)
let points = Array(scores.values)

if let lukesScore = scores["Luke"] {
    print(lukesScore)
}

