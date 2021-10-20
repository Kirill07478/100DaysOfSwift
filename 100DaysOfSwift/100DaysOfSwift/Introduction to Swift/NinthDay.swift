//
//  NinthDay.swift
//  100DaysOfSwift
//
//  Created by Kiryusha Orlov on 19.10.2021.
//

import Foundation

//class NinthDay {
//    
//    static func ninthDayCheck() {
//        
//        //Структуры часть 2
//        //Структуры имеют дефолтный инициализатор - инициализация по членам, мы должны назвать каждого члена
//        struct User {
//            var username: String
//        }
//        var user = User(username: "twostraws")
//        //Но можно и создать свой инициализатор
//        struct User1 {
//            var username: String
//
//            init() {
//                username = "Anonymous"
//                print("Creating a new user!")
//            }
//        }
//        var user1 = User1()
//        user.username = "twostraws"
//
//        //self используется для указания на экземпляр текущей структуры. Чаще используется в методах
//        struct Person {
//            var name: String
//
//            init(name: String) {
//                print("\(name) was born!")
//                self.name = name
//            }
//        }
//
//        //Ленивые свойства - свойства, которые не всегда должны использоваться
//        struct FamilyTree {
//            init() {
//                print("Creating family tree!")
//            }
//        }
//        struct Person1 {
//            var name: String
//            lazy var familyTree = FamilyTree()
//            init(name: String) {
//                self.name = name
//            }
//        }
//
//        var ed = Person1(name: "Ed")
//        //Объект до сих пор не создался, но при первом обращении к нему - он инициализируется
//        ed.familyTree
//
//        //Статические свойства и методы. Это выглядит, как свойство не отдельного экземпляра, а всей структуры в целом
//        struct Student {
//            static var classSize = 0 {
//                didSet {
//                    print("Появился новый ученик. В классе учеников - \(classSize)")
//                }
//            }
//            var name: String
//
//            init(name: String) {
//                self.name = name
//                Student.classSize += 1
//            }
//        }
//
//        let ed1 = Student(name: "Ed")
//        let taylor = Student(name: "Taylor")
//
//        print("В классе учеников - \(Student.classSize)")
//        //Для функции - аналогично. static func ...
//
//        //Контроль доступа
//        struct Person2 {
//            private var id: String
//
//            init(id: String) {
//                self.id = id
//            }
//
//            func identify() -> String {
//                return "My social security number is \(id)"
//            }
//        }
//
//        var kirill = Person2(id: "1")
//        //kirill.id - не работает
//        kirill.identify()
//
//        var array = [Int]()
//        for number in 1...100 {
//            
//            if number % 2 == 0 {
//                array.append(number)
//            }
//            
//        }
//        print(array)
//
//        
//    }
//    
//}
