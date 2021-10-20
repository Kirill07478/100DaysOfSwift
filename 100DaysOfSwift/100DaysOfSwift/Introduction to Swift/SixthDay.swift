////
////  SixthDay.swift
////  100DaysOfSwift
////
////  Created by Kiryusha Orlov on 14.10.2021.
////
//
//import Foundation
//
//class SixthDay {
//
//    static func sixthDayCheck() {
//
//        //Функции, которые являются параметрами других функция - это замыкания. Простой пример
//        let driving = {
//            print("I'm driving in my car")
//        }
//
//        driving()
//
//        //Параметры в замыкании в круглых скобках после открытия квадратных
//        let driving2 = { (place: String) in
//            print("I'm going to \(place) in my car")
//        }
//        driving2("London")
//
//        //Return в этих функциях работает как в любых функциях. Стоит перед словом in
//        let drivingWithReturn = { (place: String) -> String in
//            return "I'm going to \(place) in my car"
//        }
//        let message = drivingWithReturn("London")
//        print(message)
//
//        //При вызове closure мы не используем имена параметров, как при вызове функции
//
//        //Мы можем вставить эту функцию driving в функцию. () -> Void означает "ничего". Ничего не принимает, ничего не отдает
//        func travel(action: () -> Void) {
//            print("I'm getting ready to go.")
//            action()
//            print("I arrived!")
//        }
//        travel(action: driving)
//
//        //Так как замыкание является последним параметром, и так как параметр всего один можно вызывать функцию travel таким образом (Привыкаем к синтаксису замыканий)
//
//        travel {
//            driving()
//        }
//
//        travel {
//            print("I'm driving in my car")
//        }
//
//    }
//
//}
