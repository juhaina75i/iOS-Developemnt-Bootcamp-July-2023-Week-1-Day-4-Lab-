  import UIKit
    enum Gender {
        case male
        case female
        case other
    }

    struct Car {
        let make: String
        let model: String
        let year: Int
    }

    class Person {
        let name: String
        let age: Int
        let gender: Gender
        let car: Car
        
        init(name: String, age: Int, gender: Gender, car: Car ) {
            self.name = name
            self.age = age
            self.gender = gender
            self.car = car
        }
    }

    var gender1: Gender = .male
    var gender2: Gender = .female
       
    print("gende1: \(gender1)")
    print("gender2: \(gender2)")

    var car1 = Car(make: "Mesedes", model: "C200", year: 2022)
    var car2 = Car(make: "Honda", model: "Accord", year: 2023)

    var person1 = Person(name: "Juhaina", age: 25, gender: .female, car: car1)
    var person2 = Person(name: "Auwad", age: 80, gender: .male, car: car2)

    print("Person 1: \(person1.name), Age: \(person1.age), Gender: \(person1.gender), Car: \(person1.car)")
    print("Person 2: \(person2.name), Age: \(person2.age), Gender: \(person2.gender), Car: \(person2.car)")



    class BankAccount {
        var balance : Double
       
        init(balance : Double) {
            self.balance = balance
        }
        func deposit(amount: Double) {
                balance += amount
                print("Deposited \(amount), Current balance: \(balance)")
            }
            func withdraw(amount: Double) {
                if balance - amount >= 0 {
                    balance -= amount
                    print("Withdrew \(amount), Current balance: \(balance)")
                } else {
                    print("Insufficient balance \(amount), Current balance: \(balance)")
                }
            }
    }
    var account1 = BankAccount(balance: 2000)
    var account2 = BankAccount(balance: 3000)
    account1.deposit(amount: 500)
    account2.withdraw(amount: 300)
    account1.withdraw(amount: 1000)

enum LoginError: Error {
        case invalidUsername
        case invalidPassword
    }

    func login(username: String, password: String) throws {
        if username.isEmpty {
            throw LoginError.invalidUsername
        }
        if password.isEmpty {
            throw LoginError.invalidPassword
        }
        print("Login successful!")
    }

    do {
        try login(username: "admin", password: "password")
        
    } catch LoginError.invalidUsername {
        print("Invalid username!")
    } catch LoginError.invalidPassword {
        print("Invalid password!")
    } catch {
        print("An error occurred: \(error)")
    }

    do {
        try login(username: "", password: "password")
        print("Login successful!")
    } catch LoginError.invalidUsername {
        print("Invalid username!")
   } catch LoginError.invalidPassword {
        print("Invalid password!")
    } catch {
        print("An error occurred: \(error)")
    }

    do {
        try login(username: "Juhaina", password: "")
        print("Login successful!")
    } catch LoginError.invalidUsername {
        print("Invalid username!")
    } catch LoginError.invalidPassword {
        print("Invalid password!")
    } catch {
        print("An error occurred: \(error)")
    }




    struct Book {
        var title: String?
        var author: String?
        var publicationYear: Int?
        
        func printInformation() {
            if let title = title {
                print("Title: \(title)")
            } else {
                print("Title: Unavailable")
            }
            
            if let author = author {
                print("Author: \(author)")
            } else {
                print("Author: Unavailable")
            }
            
            if let publicationYear = publicationYear {
                print("Publication Year: \(publicationYear)")
            } else {
                print("Publication Year: Unavailable")
            }
        }
    }

    let book1 = Book(title: "RICH DAD POOR DAD", author: "Robert T.Kiyosaki", publicationYear: 1997)
    book1.printInformation()

    let book2 = Book(title: nil, author: "Unknown", publicationYear: 1996)
    book2.printInformation()

    let book3 = Book(title: nil, author: nil, publicationYear: nil)
    book3.printInformation()


    class Address {
        var streetAddress: String?
        
        init(streetAddress: String?) {
            self.streetAddress = streetAddress
        }
    }

    class Employee {
        var address: Address?
        
        init(address: Address?) {
            self.address = address
        }
        
        func printStreetAddress() {
            if let streetAddress = address?.streetAddress {
                print("Street Address: \(streetAddress)")
            } else {
                print("Street Address: Unavailable")
            }
        }
    }

    let address1 = Address(streetAddress: "Anas Bin Malik")
    let employee1 = Employee(address: address1)
    employee1.printStreetAddress()

    let address2 = Address(streetAddress: nil)
    let employee2 = Employee(address: address2)
    employee2.printStreetAddress()


    let address3 = Address(streetAddress: nil)
    let employee3 = Employee(address: nil)
    employee3.printStreetAddress()
