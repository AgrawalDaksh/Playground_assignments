func displayPi(){
    print("3.141592653589793238")
}

displayPi()

func triple(value: Int) {
    let result = value * 3
    print("If you multiply \(value) with 3, you'll get \(result)")
}

triple(value: 10)

func multiply(firstNumber: Int, secondNumber: Int) {
    let result = firstNumber * secondNumber
    print("The result is \(result).")
}
multiply(firstNumber: 10, secondNumber: 20)

func mul(firstNumber: Int, secondNumber: Int) -> Int {
    let result = firstNumber * secondNumber
    
    return result
}


