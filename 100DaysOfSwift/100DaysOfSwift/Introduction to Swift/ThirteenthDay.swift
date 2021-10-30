//
//  ThirteenthDay.swift
//  100DaysOfSwift
//
//  Created by Kiryusha Orlov on 31.10.2021.
//

import Foundation

class ThirteenthDay {
    
    static func day13Check() {
        
        //Double и Float
        //IOS рекомендует всегда использовать Double, потому что он более точный и позволяет использовать больше знаков
        // FLOAT - 32 бита, 4 байта, 7 знаков после запятой
        // Double - 64 бита, 8 байт, 15 знаков после запятой

        var testFloat: Float
        var testDouble: Double
        testFloat = 0.123456789123456789
        //1 число до запятой + 7 чисел после запятой
        testDouble = 0.123456789123456789
        //1 число до запятой + 16 после запятой

        testFloat = 1.123456789123456789
        testFloat = -1.123456789123456789
        //Отрицательный знак за число не считается

        testDouble = 123456789.123456789
        testDouble = 1234567891234567
        print(testDouble)
        testDouble = 12345678912345678
        print(testDouble)
        testDouble = 1.234567891234567
        print(testDouble)
        testDouble = 1.2345678912345678
        print(testDouble)


        var latitude: Double
        latitude = 36.166667

        var longitude: Float
        longitude = -86.783333
        longitude = -186.783333
        longitude = -1286.783333
        longitude = -12386.783333
        longitude = -123486.783333
        longitude = -1234586.783333

        let testMaxDouble: Double
        testMaxDouble = 123456789.123456789

        //Немного о памяти в Swift
        struct FullResume {
            let id: String
            let age: Int
            let hasVehicle: Bool
        }

        MemoryLayout<FullResume>.size //25
        MemoryLayout<String>.size //16
        MemoryLayout<Int>.size //8
        MemoryLayout<Bool>.size //1

        //У всех простых типов в Swift есть свое выравнивание.
        MemoryLayout<Int>.alignment // 8
        MemoryLayout<Int32>.alignment // 4
        MemoryLayout<Int16>.alignment // 2
        MemoryLayout<Bool>.alignment // 1

        struct ShortResume {
            let age: Int
            let hasVehicle: Bool
        }

        MemoryLayout<ShortResume>.size //9
        MemoryLayout<ShortResume>.stride //16
        MemoryLayout<ShortResume>.alignment //8

        struct ShortResume2 {
            let age: Int16
            let hasVehicle: Bool
        }

        MemoryLayout<ShortResume2>.size //3
        MemoryLayout<ShortResume2>.stride //4
        MemoryLayout<ShortResume2>.alignment //2

        struct ShortResume3 {
            let age: String
            let hasVehicle: String
        }

        MemoryLayout<ShortResume3>.size //32
        MemoryLayout<ShortResume3>.stride //32
        MemoryLayout<ShortResume3>.alignment //8

        class PaidService {
            let id: String
            let name: String
            let isActive: Bool
            let expiresAt: Date?
            
            init (id: String, name: String, isActive: Bool, expiresAt: Date?) {
                
                self.id = id
                self.name = name
                self.isActive = isActive
                self.expiresAt = expiresAt
                
            }
        }

        MemoryLayout<PaidService>.size       // 8
        MemoryLayout<PaidService>.alignment  // 8
        MemoryLayout<PaidService>.stride     // 8
        //Потому что ссылочный тип. Соответственно все экземпляры класса весят 8 байт.

        //Как вы узнали, есть два способа сказать Swift, какой тип данных содержит переменная: назначить значение при создании переменной или использовать аннотацию типа. Если у вас есть выбор, первый всегда предпочтительнее, потому что он яснее.
        //То есть:
        var name1 = "Кирилл"
        var name2: String
        name2 = "Кирилл"
        //name1 предпочтительнее(лучше), чем name2

        //Но можно и так
        var name: String = "Tim McGraw"

        //Сложения строк могут быть двух типов: Интерполяция или "Слож" + "ение"
        //Интерполяция лучше тем,  что можно складывать разные типы данных, а также работать с числовыми значениями сразу в строке
        var name3 = "Tim McGraw"
        var age = 25
        var latitude1 = 36.166667

        "Your name is \(name3), your doubled age is \(age * 2), and your latitude is \(latitude1)"

        //Интересная функция - type. Умеет определять тип данных
        var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
        type(of: songs)

        //Массивы могут иметь смешанные значения, они обманывают нас, что не могут
        var songs1: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]
        type(of: songs1)

        //А вот эта строка не создает массив, она просто говорит, что со временем такой массив появится
        var songs2: [String]

        //Чтобы это показать наглядно, правильнее будет создать массив таким образом
        var songs3: [String] = []
        //или такой вариант по смыслу аналогичен, но на два символа короче, поэтому программисты любят его xD
        var songs4 = [String]()

        //А так же массивы работают не со всеми операторами: стандартные -, *, /, % не работают
        songs4 = ["Сансара", "Юность"]
        songs + songs4

        //Также swift имеет операторы логики. Например && = логическое "И".
        //print - специальная функция для отладки
        //Специальная фича в swift: цикл по массиву
        for song in songs {
            print("My favorite song is \(song)")
        }

        //Но мы конечно можем использовать с массивами и классический метод. Особенно полезно, если данные нужны с двух массивов
        var people = ["players", "haters", "heart-breakers", "fakers"]
        var actions = ["play", "hate", "break", "fake"]

        for i in 0 ... 3 {
            print("\(people[i]) gonna \(actions[i])")
        }

        
    }
    
}
