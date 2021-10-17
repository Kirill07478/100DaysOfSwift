//
//  SeventhDay.swift
//  100DaysOfSwift
//
//  Created by Kiryusha Orlov on 17.10.2021.
//

import Foundation

class SeventhDay {
    
    static func seventhDayCheck() {
        
        //Функции, которые являются параметрами других функция - это замыкания. Простой пример
        let driving = {
            print("I'm driving in my car")
        }

        driving()

        //Параметры в замыкании в круглых скобках после открытия квадратных
        let driving2 = { (place: String) in
            print("I'm going to \(place) in my car")
        }
        driving2("London")

        //Return в этих функциях работает как в любых функциях. Стоит перед словом in
        let drivingWithReturn = { (place: String) -> String in
            return "I'm going to \(place) in my car"
        }
        let message = drivingWithReturn("London")
        print(message)

        //При вызове closure мы не используем имена параметров, как при вызове функции

        //Мы можем вставить эту функцию driving в функцию. () -> Void означает "ничего". Ничего не принимает, ничего не отдает
        func travel(action: () -> Void) {
            print("I'm getting ready to go.")
            action()
            print("I arrived!")
        }
        travel(action: driving)

        //Так как замыкание является последним параметром, и так как параметр всего один можно вызывать функцию travel таким образом (Привыкаем к синтаксису замыканий)

        travel {
            driving()
        }

        travel {
            print("I'm driving in my car")
        }
        //__________________________________________________
        //Closures могут принимать параметры. Делают это как обычные функции, только без имени переменной
        //Использование замыканий в качестве параметров, когда они принимают параметры
        func travel(action: (String) -> Void) {
            print("I'm getting ready to go.")
            action("London")
            print("I arrived!")
        }
        travel { (place: String) in
            print("I'm going to \(place) in my car")
        }

        //Аналогичная ситуация с return
        //Использование замыканий в качестве параметров при возврате значений
        func travel(action: (String) -> String) {
            print("I'm getting ready to go.")
            let description = action("London")
            print(description)
            print("I arrived!")
        }
        travel { (place: String) -> String in
            return "I'm going to \(place) in my car"
        }

        // Как мы можем сократить этот пример???
        //Во-первых, Swift знает, какой тип будем возвращать
        //Во-вторых, Swift знает, какой тип придет в массив
        //В-третьих, Swift видит только одну строчку, значит это и есть return
        //В-Четвертых, Swift умеет сам давать именна переменным через $

        travel {
            "I'm going to \($0) in my car. СОКРАЩЕННЫЙ ВАРИАНТ"
        }

        //Пример с двумя параметрами для наглядности
        func travel(action: (String, Int) -> String) {
            print("I'm getting ready to go.")
            let description = action("London", 60)
            print(description)
            print("I arrived!")
        }
        travel {
            "I'm going to \($0) at \($1) miles per hour."
        }

        //Возврат замыканий из функций
        func travel() -> (String) -> Void {
            return {
                print("I'm going to \($0)")
            }
        }
        let result = travel()
        result("London1ый")
        //Технически допустимо, но не рекомендуется напрямую вызывать возвращаемое значение
        let result2 = travel()("London2ой")

        //Захват значений
        func travelTwo() -> (String) -> Void {
            var counter = 1

            return {
                print("\(counter). I'm going to \($0)")
                counter += 1
            }
        }
        let resultTwo = travelTwo()

        resultTwo("London")
        resultTwo("London")
        resultTwo("London")
        //Несмотря на то, что эта переменная counter была создана внутри travel(), она захватывается замыканием, поэтому она все равно останется в живых для этого клоужера.

        
    }
    
}
