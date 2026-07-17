/*:
## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking the variable name.
 */
var firstdecimal = 1.56
var seconddecimal = 2.45
//:  Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var trueorfalse = true
//firstdecimal = trueorfalse
print("This does not compile because 'firstdecimal' is a double and 'trueorfalse' is a boolean and different datatypes cannot be assigned to each other")
//:  Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var text = "Hii"
//firstdecimal = text
print("This does not compile because 'firstdecimal' is a double and 'text' is a string and different datatypes cannot be assigned to each other")
//:  Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var number = 20
//firstdecimal = number
print("This does not compile because 'firstdecimal' is a double and 'number' is int and Swift requires explicit type conversion")

/*:
[Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
 */
