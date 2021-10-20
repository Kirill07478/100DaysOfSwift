//
//  TenthDay.swift
//  100DaysOfSwift
//
//  Created by Kiryusha Orlov on 20.10.2021.
//

import Foundation

class TenthDay {
    
    static func tenthDayCheck() {
        
        //Классы
        //Классы и структуры имеют 5 различий
        //Первое различие:
        //Классы не имеют инициализаторов по умолчанию и по членам
        //То есть всегда для свойств нужно писать инициализатор
        class Dog {
            var name: String
            var breed: String

            init(name: String, breed: String) {
                self.name = name
                self.breed = breed
            }
        }
        let poppy = Dog(name: "Poppy", breed: "Poodle")
        //Если свойства имеют значения (по умолчанию), тогда init не нужен

        //Второе различие:
        //Классы можно создавать на основе других классов (Это называется наследование)
        //Класс-наследник называется "child", а класс от которого наследуетесь - "родитель" или "супер"

        class Poodle: Dog {
            init(name: String) {
                super.init(name: name, breed: "Poodle")
            }
        }
        //SWIFT всегда заставляет вызывать super.init на случай, если родительский класс выполняет важную работу
        //Родитель может быть только один у класса

        final class Dog1 {
            var name: String
            var breed: String

            init(name: String, breed: String) {
                self.name = name
                self.breed = breed
            }
        }

        //Методы родительского класса передаются классам-наследникам
        class Dog2 {
            func makeNoise() {
                print("Woof!")
            }
        }
        class Poodle2: Dog2 {
        }

        let poppy2 = Poodle2()
        poppy2.makeNoise()
        //Метод override позволяет переопределить метод родительского класса.
        class Poodle3: Dog2 {
            override func makeNoise() {
                print("Yip!")
            }
        }
        let poppy3 = Poodle3()
        poppy3.makeNoise()

        //Ключевое слово final нужно для того, чтобы от класса нельзя было наследоваться
        final class Dog3 {
            var name: String
            var breed: String

            init(name: String, breed: String) {
                self.name = name
                self.breed = breed
            }
        }
        //class someBreed: Dog3 {} - выдаст ошибку

        //Третье различие
        //Переменные, которые хранят структуру, хранят данные этой структуры, поэтому когда мы "копируем" структуры, получаем две разные структуры и можем у каждой поменять какие-нибудь данные, чтобы это было два разных объекта
        //Классы, хранят ссылку, поэтому если мы "копируем" классы, то получаем вде ссылки на один объект. Изменили у одного, изменилось и у второго
        class Singer {
            var name = "Taylor Swift"
        }
        var singer = Singer()
        print(singer.name)
        var singerCopy = singer
        singerCopy.name = "Justin Bieber"
        print(singer.name)
        //В примере выше можно менять class и struct, чтоыб понять смысл копирования классов и структур

        //Четвертое различие
        //Классы, в отличии от структур, имеют деинициализаторы (deinit). Они срабатывают в момент, когда класс уничтожается
        class Person {
            var name = "John Doe"

            init() {
                print("\(name) is alive!")
            }
            
            deinit {
                print("\(name) is no more!")
            }

            func printGreeting() {
                print("Hello, I'm \(name)")
            }
        }
        for _ in 1...3 {
            let person = Person()
            person.printGreeting()
        }
        //deinit всегда пишется без скобок после deinit

        //Пятое различие
        //Классам не нужно добавлять слово mutating, что изменять переменные
        //Если переменная, которая хранит ссылку на класс - let
        //Тогда можно менять параметры этого класса, если они - var
        //Если переменная, которая хранит структуру - let
        //Тогда мы не сможем изменить параметры структуры, даже если они - var

        class Singer1 {
            var name = "Taylor Swift"
        }

        let taylor = Singer()
        taylor.name = "Ed Sheeran"
        print(taylor.name)

        //Если нужно это остановить
        class Singer2 {
            let name = "Taylor Swift"
        }
        
    }
    
}
