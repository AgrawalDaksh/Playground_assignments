/*:
## Exercise - Return Values

 Write a function called `greeting` that takes a `String` argument called name, and returns a `String` that greets the name that was passed into the function. I.e. if you pass in "Sophie" the return value might be "Hi, Sophie! How are you?" Use the function and print the result.
 */
func greeting(name: String) -> String {
    return "Hi, \(name)! How are you?"
}
var name = greeting(name: "Daksh")
print(name)
name = greeting(name: "Atharva")
print(name)
name = greeting(name: "Avishka")
print(name)

//:  Write a function that takes two `Int` arguments, and returns an `Int`. The function should multiply the two arguments, add 2, then return the result. Use the function and print the result.
func multiplyAndAdd(num1: Int, num2: Int) -> Int {
    return (num1 * num2) + 2
}
var mul = multiplyAndAdd(num1: 2, num2: 4)
print(mul)
mul = multiplyAndAdd(num1: 10, num2: 20)
print(mul)
mul = multiplyAndAdd(num1: 40, num2: 60)
print(mul)

/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Separating Functions](@next)
 */
