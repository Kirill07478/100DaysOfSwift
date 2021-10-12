////
////  ThirdDay.swift
////  100DaysOfSwift
////
////  Created by Kiryusha Orlov on 11.10.2021.
////
//
//import Foundation
//
//class ThirdDay {
//    
//    static func thirdDayCheck() {
//        
//        //Операторы в Swift
//        let firstScore = 12
//        let secondScore = 4
//        //"+" Сложение
//        let total = firstScore + secondScore
//        //"-" Вычитание
//        let difference = firstScore - secondScore
//        //"/" Деление
//        let divided = firstScore / secondScore
//        //"*" Умножение
//        let product = firstScore * secondScore
//        //"%" Остаток от деления
//        let remainder = firstScore % secondScore
//
//        //В SWIFT мы можем складывать строки, массивы и числовые переменные одного типа
//        let somethingTotal = "Больше учись " + "Лучше научишься"
//
//        //Compound assignment operators - Операторы назначения составных соединений
//        //+=, -=, /=, *=
//        var score = 100
//        score *= 3
//        score /= 5
//        score -= 10
//
//        var quote = "Кто не рискует, тот не пьет "
//        quote += "шампанское"
//
//        //Операторы сравнения
//        // ==, !=, >, <=
//        4 == 6
//        4 != 6
//        4 > 6
//        4 <= 6
//
//        //Каждый из них также работает со строками, потому что строки имеют естественный алфавитный порядок:
//
//        "ABCDEFGH" < "QWERTY"
//        "ABCDEFGH" == "QWERTY"
//
//        //Если сравнивается Boolean, можно писать сокращенно 45 и 46 строка идентичны по смыслуч
//        let someBoolean = true
//
//        someBoolean == true
//        someBoolean
//
//        //Условия - conditions
//        let firstCard = 11
//        let secondCard = 10
//
//        if firstCard + secondCard == 2 {
//            print("Aces – lucky!")
//        } else if firstCard + secondCard == 21 {
//            print("Blackjack!")
//        } else {
//            print("Regular cards")
//        }
//
//        //Комбинированные условия
//        //&& - Логическое И
//        //|| - Логическое ИЛИ
//        let age1 = 12
//        let age2 = 21
//        if age1 > 18 || age2 > 18 {
//            print("At least one is over 18")
//        } else if age1 > 18 && age2 > 18 {
//            print("Both are over 18")
//        }
//
//        //Тернарный оператор
//        //УСЛОВИЕ ? ЕСЛИ TRUE : ЕСЛИ FALSE
//        //Два сравнения снизу идентичны
//
//        let firstThings = 11
//        let secondThings = 10
//        print(firstCard == secondCard ? "Cards are the same" : "Cards are different")
//
//        if firstCard == secondCard {
//            print("Cards are the same")
//        } else {
//            print("Cards are different")
//        }
//
//        //Оператор switch (switch/case)
//        let weather = "sunny"
//        switch weather {
//        case "rain":
//            print("Bring an umbrella")
//        case "snow":
//            print("Wrap up warm")
//        case "sunny":
//            print("Wear sunscreen")
//            fallthrough
//        default:
//            print("Enjoy your day!")
//        }
//
//        //default - дефолтный случай, если вдруг не будет дождя, солнца или снега (Обязательный)
//        //fallthrough - после выполнения успешного блока, продолжает идти по условиям. В примере после выполнения блока case "sunny", после fallthrough еще один успешный случай - default
//
//
//        //range operators - операторы диапазона
//        let newScore = 85
//
//        switch newScore {
//        case 0..<50:
//            print("You failed badly.")
//        case 50..<85:
//            print("You did OK.")
//        default:
//            print("You did great!")
//        }
//
//        1..<4 // 1, 2, 3
//        1...4 // 1, 2, 3, 4
//
//        let passingGrade = 70...100
//        print(passingGrade)
//
//        var array = [Int]()
//        for number in 1...100 {
//            if number % 2 == 0 {
//                array.append(number)
//            }
//        }
//        print(array)
//
//        
//    }
//    
//}
