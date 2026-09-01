import UIKit

//func divide (_ number: Double, by divisor: Double) {
//    if divisor != 0 {
//        let result = number / divisor
//        print(result)
//    }
//}

func divide (_ number: Double, by divisor: Double) {
    guard divisor != 0 else {
        return
    }
    let result = number / divisor
    print(result)
}

func divide (_ number: Double, by divisor: Double) -> Double {
    guard divisor != 0 else {
        return 0
    }
    return number / divisor
}


