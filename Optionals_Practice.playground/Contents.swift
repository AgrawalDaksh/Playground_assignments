import UIKit

struct Book {
    let name: String
    let publicationYear: Int?
}

let firstDickens = Book(name: "A Christmas Carol", publicationYear: 1843)
let secondDickens = Book(name: "David Copperfield", publicationYear: 1849)

let books = [firstDickens, secondDickens]

let unannoucedBook = Book(name: "Rebels and Lions", publicationYear: nil)

//var serverResponseCode: Int? = 404

var serverResponseCode: Int? = nil

//type(of: Book(name: <#T##String#>, publicationYear: <#T##Int?#>))
/*if publicationYear != nil {
    let actualYear = publicationYear!
    print(actualYear)
}

let unwrappedYear = publicationYear!
*/


/*if let constantName = someOptional {
    //constantName has been safely unwrapped for use within the braces.
}
*/

var book = Book(name: "Kite Runner", publicationYear: 1998)
if let unwrappedPublicationyear = book.publicationYear {
    print("The book was published in \(unwrappedPublicationyear)")
}
else {
    print("The book does not have an optional publication date.")
}











struct Employee {
    let empname: String
    let empno: Int?
}

let firstemp = Employee(empname: "daksh", empno: 13306)
let secondemp = Employee(empname: "atharva", empno: 2006)

if let unwrappedempno = firstemp.empno {
    print("The employee number is \(unwrappedempno)")
}
else {
    print("The employee doesnt have an optional employee number")
}


func printFullName(firstName: String, middleName: String?, lastName: String) {
    
}

struct Toddler {
    var birthName: String
    var monthsOld: Int
    
    init ? (birthName: String, monthsOld: Int) {
        if monthsOld < 12 || monthsOld > 36 {
            return nil
        }
        else {
            self.birthName = birthName
            self.monthsOld = monthsOld
        }
    }
}

let firstkid = Toddler(birthName: "daksh", monthsOld: 20)
var secondkid = Toddler(birthName: "atharva", monthsOld: 6)

if let toddler = firstkid {
    print("\(toddler.birthName) is \(toddler.monthsOld) months old")
}
else {
    print("The age is not between 1 and 3 years of age")
}

struct Person {
    var age: Int
    var residence: Residence?
}

struct Residence {
    var address: Address?
}

struct Address {
    var buildingNumber: String?
    var streetName: String?
    var apartmentNumber: String?
}

var person = Person(age: 24)

//Option 1 to perform Optional Chaining: The pyramid of doom.
if let theResidence = person.residence {
    if let theAddress = theResidence.address {
        if let theApartmentNumber = theAddress.apartmentNumber {
            print("They live in apartment number \(theApartmentNumber).")
        }
    }
}

//Option 2 to perform Optional Chaining
if let theApartmentNumber = person.residence?.address?.apartmentNumber {
    print("They live in apartment number \(theApartmentNumber).")
}
