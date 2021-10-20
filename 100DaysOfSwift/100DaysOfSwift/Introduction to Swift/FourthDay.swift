////
////  FourthDay.swift
////  100DaysOfSwift
////
////  Created by Kiryusha Orlov on 13.10.2021.
////
//
//import Foundation
//
//class FourthDay {
//    
//    static func fourthDayCheck() {
//        
//        //Цикл for
//        let count = 1...10
//        for number in count {
//            print("Number is \(number)")
//        }
//
//        //Можно пробежаться по массиву
//        let albums = ["Red", "1989", "Reputation"]
//        for album in albums {
//            print("\(album) is on Apple Music")
//        }
//
//        //Можно не использовать константу и оставить нижнее подчеркивание
//        print("Players gonna ")
//        for _ in 1...5 {
//            print("play")
//        }
//
//        //Цикл while
//        var number = 1
//        while number <= 20 {
//            print(number)
//            number += 1
//        }
//
//        //Цикл repeat-while
//        var someNumber = 1
//        repeat {
//            print(someNumber)
//            number += 1
//        } while number <= 20
//
//        //Цикл repeat-while выполнится как минимум один раз. Для примера сравнение с while
//        while false {
//            print("This is false")
//        }
//
//        repeat {
//            print("This is false")
//        } while false
//
//        //Слово break позволяет выйти из цикла в нужное мне время
//        var countDown = 10
//        while countDown >= 0 {
//            print(countDown)
//
//            if countDown == 4 {
//                print("I'm bored. Let's go now!")
//                break
//            }
//
//            countDown -= 1
//        }
//
//        //Выход из нескольких циклов: нужно выйти из верхнего цикла, тогда нижнее окончатся вместе с ним. Для этого даем название верхнему циклу
//        outerLoop: for i in 1...10 {
//            for j in 1...10 {
//                let product = i * j
//                print ("\(i) * \(j) is \(product)")
//
//                if product == 50 {
//                    print("It's a bullseye!")
//                    break outerLoop
//                }
//            }
//        }
//        //Если использовать просто break, выйдет только из нижнего цикла и верхний будет дальше работать при следующем условии
//
//        //Чтобы перейти к следующей итерации цикла, используется ключевое слово - continue
//        for i in 1...10 {
//            if i % 2 == 1 {
//                continue
//            }
//
//            print(i)
//        }
//
//        //Бесконечными бывают циклы while с условием while true. Необходимо, чтобы был кусочек, вытягивающий вас из цикла
//        var counter = 0
//
//        while true {
//            print(" ")
//            counter += 1
//
//            if counter == 3 {
//                break
//            }
//        }
//        
//    }
//    
//}
