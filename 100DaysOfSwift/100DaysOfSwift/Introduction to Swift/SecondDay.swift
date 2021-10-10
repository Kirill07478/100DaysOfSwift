//
//  SecondDay.swift
//  100DaysOfSwift
//
//  Created by Kiryusha Orlov on 10.10.2021.
//

import Foundation

class SecondDay {
    
    static func secondDayCheck() {
        
        //MARK: - Arrays
        var arr = [1,3,2,3]

        //MARK: - Set
        var set = Set([1,2,2,2,2,2,1,3,4,4,3,1])

        //MARK: - Tuple
        var person = (firstName: "Kirill", lastName: "Orlov")

        //Tuples можно звать и по порядковому номеру, и по имени
        //Tuples обязательно можно создавать только как переменные var
        var address = (house: 22, street: "Pushkina street", city: "Saint-P")
        print (address.1)
        print (address.street)

        //MARK: - Dictionary
        var heights = [
            "Me": 1.70,
            "My father":1.72,
            "My mother":1.65
        ]
        print(heights["Me"])

        //Dictionary можно задать дефолтное значение, чтобы не словить нил
        var favoriteIceCream = [
            "Paul":"Chocolate",
            "Sophie":"Vanilla"
        ]
        print(favoriteIceCream["Paul"])
        print(favoriteIceCream["Kirill"])

        favoriteIceCream["Kirill"] = favoriteIceCream["Kirill", default: "Unknown"]
        print(favoriteIceCream["Paul"])
        print(favoriteIceCream["Kirill"])
        print(favoriteIceCream["Jack"])


        let message = "Hello my friends, how are you doing?!"
        var letterCounts: [Character: Int] = [:]
        for character in message {
            letterCounts[character, default: 0] += 1
        }

        print("\n")
        print(letterCounts)

        var nameAgeDict: Dictionary<String,Int> = [:]
        nameAgeDict["Tales"] = 12
        for name in ["Leo","Ana","John"] {
            nameAgeDict[name] = nameAgeDict[name,default: 100]
        }
        print (nameAgeDict)

        //Создание пустых коллекций:

        var arr1 = [Int]()
        var dict1 = [Int: String]()
        var set1 = Set<String>()

        //Swift имеет специальные комбинации для массивов и словарей и их инициализации с использованием кввадратных скобок. Но можно использовать и классический вариант

        var scores = Dictionary<String, Int>()
        var results = Array<Int>()

        //MARK: - Enum
        enum Result {
            case success
            case failure
        }
        let result = Result.failure

        //Enum умеют добавлять подробностей. Это свойство называется - "Связанное значение"
        enum Activity {
            case bored
            case running(destination: String)
            case talking(topic: String)
            case singing(volume: Int)
        }
        let talking = Activity.talking(topic: "football")

        print(talking)

        //Enum имеет свойство rawValue. Это свойство нумерует енамы как массив. Нумерация начинается с нуля
        enum Planet: Int {
            case mercury
            case venus
            case earth
            case mars
        }

        let ourPlanet = Planet(rawValue: 2)

        //Но если нужно мы можем пронумеровать какое-либо значеие, а дальше свифт выстроит нумерацию сам. Либо пронумеровать каждое значение. Правильно нумерует, если пронумеровать первый элемент. То что выше нумерации остается как было (С нуля)
        enum NewPlanet: Int {
            case mercury = 1
            case venus
            case earth
            case mars
        }

        let newOurPlanet = NewPlanet(rawValue: 3)

        //rawValue - опциональный


        
    }
    
}
