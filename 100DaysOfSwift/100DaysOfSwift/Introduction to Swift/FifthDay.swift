//
//  FifthDay.swift
//  100DaysOfSwift
//
//  Created by Kiryusha Orlov on 14.10.2021.
//

import Foundation

class FifthDay {
    
    static func fifthDayCheck() {
        
        //Функции начинаются с ключевого слово func
        func printHelp() {
            let message = """
        Welcome to MyApp!

        Run this app inside a directory of images and
        MyApp will resize them all into thumbnails
        """

            print(message)
        }

        printHelp()

        //Чтобы функция принимала параметры, нкжно указать их в круглых скобках в таком формате:
        //название_параметра: тип_данных_параметра

        func square(number: Int) {
            print(number * number)
        }
        square(number: 3)

        //Функция возвращает значение с помощью return. После return никакой код не выполняется.
        func squareReturning(number: Int) -> Int {
            return number * number
        }
        let result = squareReturning(number: 8)
        print(result)
        //Если нужно вернуть несколько значений, придется использовать кортежи

        //Можно использовать два имени параметра. Два слова разделяемых проблемов: первое - внешнее, второе - внутреннее (Так делают, чтобы код читался естественннее
        func sayHello(to name: String) {
            print("Hello, \(name)!")
        }
        sayHello(to: "Taylorz")

        //Чтобы при вызове функции, не писать название параметра, можно указать прочерк в его имени
        func greet(_ person: String) {
            print("Hello, \(person)!")
        }
        greet("Taylor")

        //Можно устанавливать дефолтные параметры, нужно присвоить им значение в круглых скобках
        func greet(_ person: String, nicely: Bool = true) {
            if nicely == true {
                print("Hello, \(person)!")
            } else {
                print("Oh no, it's \(person) again...")
            }
        }
        greet("Taylor")
        greet("Taylor", nicely: false)

        //Если функция должна принимать как минимум одно значение, но может передать и больше, как функция print. Чтобы это реализовать ставим после типа данных ...
        func square(numbers: Int...) {
            for number in numbers {
                print("\(number) squared is \(number * number)")
            }
        }

        square(numbers: 1, 2, 3, 4, 5)
        square(numbers: 1)


        //Чтобы выбросить "ошибку в функции" испоьзуют ключевое слово throws
        enum PasswordError: Error {
            case obvious
        }
        func checkPassword(_ password: String) throws -> Bool {
            if password == "password" {
                throw PasswordError.obvious
            }

            return true
        }

        //Блок try-catch, нужен чтобы отлавливать ошибки и граммотно их обрабатывать.
        //do - начало блока кода
        //try - перед функциями, которые могут выбросить ошибку
        //catch - позволяет обрабатывать ошибки

        do {
            try checkPassword("password")
            print("That password is good!")
        } catch {
            print("You can't use that password.")
        }

        //Функция может менять значение переданного ей параметра, для этого есть параметр inout. И в вызове функции добавляется "&"
        var myNum = 10
        func doubleInPlace(number: inout Int) {
            number *= 2
        }
        doubleInPlace(number: &myNum)
        print("MyNum is - \(myNum)")


        func stringCounter (someString: String) -> Int {
            return someString.count
        }

        stringCounter(someString: "Kirill")

        
    }
    
}
