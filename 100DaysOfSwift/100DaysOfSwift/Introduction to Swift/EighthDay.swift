////
////  EighthDay.swift
////  100DaysOfSwift
////
////  Created by Kiryusha Orlov on 17.10.2021.
////
//
//import Foundation
//
//class EighthDay {
//    
//    static func eighthDayCheck() {
//        
//        //Структуры
//        //Создание структуры, объявление экзмепляра.
//        //Название структуры всегда с большой буквы
//        struct Sport {
//            var name: String
//        }
//        var tennis = Sport(name: "Tennis")
//        print(tennis.name)
//
//        //В структуре могут быть вычисляемые свойства(Они всегда var, а не let), и всегда указывается тип
//        struct Sport1 {
//            var name: String
//            var isOlympicSport: Bool
//
//            var olympicStatus: String {
//                if isOlympicSport {
//                    return "\(name) is an Olympic sport"
//                } else {
//                    return "\(name) is not an Olympic sport"
//                }
//            }
//        }
//        let chessBoxing = Sport1(name: "Chessboxing", isOlympicSport: false)
//        print(chessBoxing.olympicStatus)
//
//        //Наблюдатели свойств didSet (после изменений) и willSet (до изменений)
//        struct Progress {
//            var task: String
//            var amount: Int{
//                willSet {
//                print("\(task) is now \(amount)% complete")
//                }
//            }
//        }
//        var progress = Progress(task: "Loading data", amount: 0)
//        progress.amount = 30
//        progress.amount = 80
//        progress.amount = 100
//
//        //Функции внутри структур принято называть методами
//        struct City {
//            var population: Int
//
//            func collectTaxes() -> Int {
//                return population * 1000
//            }
//        }
//        let london = City(population: 9_000_000)
//        london.collectTaxes()
//
//        //Автоматически SWIFT не дает возможности изменять переменные в структуре из функции, но чтобы это делать, используется ключевое слово mutating
//        struct Person {
//            var name: String
//
//            mutating func makeAnonymous() {
//                name = "Anonymous"
//            }
//        }
//        //Поскольку это изменяет свойство, Swift позволит вызывать этот метод только для экземпляров Person, которые являются переменными:
//
//        //Свойства и методы строк
//        let string = "Do or do not, there is no try."
//
//        //Подсчет количества символов в строке
//        print(string.count)
//
//        //hasPrefix(), который возвращает true, если строка начинается с определенных букв:
//        print(string.hasPrefix("Do"))
//
//        //Делаем всю строку заглавными буквами
//        print(string.uppercased())
//
//        //Строки можно даже сортироваться
//        print(string.sorted())
//
//        //Очень важный метод contains(), он возвращает true, если стркоа содержит в себе другую строку
//        string.contains("there")
//
//        //Свойства и методы массивов
//        var toys = ["Woody"]
//
//        //Подсчет количества элементов
//        print(toys.count)
//
//        //Добавить новый элемент
//        toys.append("Buzz")
//
//        //Найти индекс первого любого элемента в массиве
//        toys.firstIndex(of: "Buzz")
//
//        //Сортировать массив
//        print(toys.sorted())
//
//        //Удаление элемента
//        toys.remove(at: 0)
//
//        //Такой же метод contains, как у структур
//        toys.contains("Buzz")
//
//        
//    }
//    
//}
