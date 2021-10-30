//
//  EleventhDay.swift
//  100DaysOfSwift
//
//  Created by Kiryusha Orlov on 21.10.2021.
//

import Foundation

//class EleventhDay {
//    
//    static func eleventhDauCheck() {
//        
//        
//        //Протоколы
//        //Какие методы и свойства должны что-то иметь?
//        protocol Identifiable {
//            var id: String { get set }
//        }
//        //Нельзя set отдельно.
//        //get set - read write вариант
//        //get - read only
//        //set - not allowed
//
//        struct User: Identifiable {
//            var id: String
//        }
//
//        func displayID(thing: Identifiable) {
//            print("My ID is \(thing.id)")
//        }
//
//        //Протоколы в swift могут наследоваться друг от друга, а так же в swift есть множественное наследование
//        protocol Payable {
//            func calculateWages() -> Int
//        }
//
//        protocol NeedsTraining {
//            func study()
//        }
//
//        protocol HasVacation {
//            func takeVacation(days: Int)
//        }
//        protocol Employee: Payable, NeedsTraining, HasVacation { }
//
//        //Расширения помогают добавлять методы к уже существующим типам
//        extension Int {
//            func squared() -> Int {
//                return self * self
//            }
//        }
//
//        let number = 8
//        number.squared()
//
//        //Swift не дает создать tored property, приходится делать computed property
//        extension Int {
//            var isEven: Bool {
//                return self % 2 == 0
//            }
//        }
//
//        //У расширений есть проблема - мы делаевм это только к одному типу одновременно (В примере выше - INT)
//        //Изменение протокола может решить проблему. Протокол Collection подписан и на Array, и на Set. Ниже два примера
//        let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
//        let beatles = Set(["John", "Paul", "George", "Ringo"])
//
//        extension Collection {
//            func summarize() {
//                print("There are \(count) of us:")
//
//                for name in self {
//                    print(name)
//                }
//            }
//        }
//
//        pythons.summarize()
//        beatles.summarize()
//
//        //Расширения протоколов обеспечивают реализацию по умолчанию, чтобы проще было соответствовать разным типам (И не писать для каждого - реализацию)
//
//        protocol Identifiable1 {
//            var id: String { get set }
//            func identify()
//        }
//        //Протокол Identifiable1 требует, чтобы у каждого типа, к которому относится этот протокол были id и identify(), но расширение протокола позволяет предоставить значение по умолчанию
//        extension Identifiable1 {
//            func identify() {
//                print("My ID is \(id).")
//            }
//        }
//        //В итоге, структура автоматически получает identify()
//        struct User1: Identifiable1 {
//            var id: String
//        }
//
//        let twostraws = User1(id: "twostraws")
//        twostraws.identify()
//
//        func counterString(someStr: String) -> Int {
//            return someStr.count
//        }
//        counterString(someStr: "fggdgfdfdsf")
//
//        
//    }
//    
//}
