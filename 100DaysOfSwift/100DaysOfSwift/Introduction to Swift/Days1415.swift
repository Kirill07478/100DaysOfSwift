//
//  Days1415.swift
//  100DaysOfSwift
//
//  Created by Kiryusha Orlov on 01.11.2021.
//

import Foundation

class Days1415 {
    
    static func days1415() {
        
        //Enums
        //Пример использование enum в switch/case
        enum WeatherType {
            case sun
            case cloud
            case rain
            case wind(speed: Int)
            case snow
        }

        func getHaterStatus(weather: WeatherType) -> String? {
            switch weather {
            case .sun:
                return nil
            case .wind(let speed) where speed < 10:
                return "meh"
            case .cloud, .wind:
                return "dislike"
            case .rain, .snow:
                return "hate"
            }
        }

        getHaterStatus(weather: WeatherType.wind(speed: 5))

        //Objective-C
        //Чтобы метод класса поддерживала часть системы Apple, нужно добавить @objc
        //Или перед классом использовать @objcMembers

        //Классы и Структуры
        //Классы - большая гибкость, Структуры - большая безопасность

        //Свойства классов и структур
        //Наблюдатели
        //willSet и didSet
        struct Person {
            var clothes: String {
                willSet {
                    updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
                }

                didSet {
                    updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
                }
            }
        }

        func updateUI(msg: String) {
            print(msg)
        }

        var taylor = Person(clothes: "T-shirts")
        taylor.clothes = "short skirts"

        //Вычисляемые свойства - get
        struct Person1 {
            var age: Int

            var ageInDogYears: Int {
                get {
                    return age * 7
                }
            }
        }

        var fan = Person1(age: 25)
        print(fan.ageInDogYears)

        //Если сеттеров не будет, а будет только гет, можно убрать слово get
        struct Person2 {
            var age: Int

            var ageInDogYears: Int {
                    return age * 7
                }
        }

        //Статические свойства и методы принадлежат не экземплярам типа, а самому типу
        struct TaylorFan {
            static var favoriteSong = "Look What You Made Me Do"

            var name: String
            var age: Int
        }

        let fan1 = TaylorFan(name: "James", age: 25)
        print(TaylorFan.favoriteSong)

        //Typecasting в Swift может быть трех типов, но часто встречаются только два: as? и as!
        //as! - более опасный! Вызовет краш приложения в случае, если typecasting не сработает
        //as? - более безопасный. Стоит использовать с if let
        class Album {
            var name: String

            init(name: String) {
                self.name = name
            }

            func getPerformance() -> String {
                return "The album \(name) sold lots"
            }
        }

        class StudioAlbum: Album {
            var studio: String

            init(name: String, studio: String) {
                self.studio = studio
                super.init(name: name)
            }

            override func getPerformance() -> String {
                return "The studio album \(name) sold lots"
            }
        }

        class LiveAlbum: Album {
            var location: String

            init(name: String, location: String) {
                self.location = location
                super.init(name: name)
            }

            override func getPerformance() -> String {
                return "The live album \(name) sold lots"
            }
        }

        var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
        var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
        var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

        var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

        for album in allAlbums {
            print(album.getPerformance())

            if let studioAlbum = album as? StudioAlbum {
                print(studioAlbum.studio)
            } else if let liveAlbum = album as? LiveAlbum {
                print(liveAlbum.location)
            }
        }
        //Оператор nil coalescing - ??

        for album in allAlbums as? [LiveAlbum] ?? [LiveAlbum]() {
            print("Это уже новый пример полностью! Обрати внимание! \(album.location)")
        }
        //Здесь 0 операторов, потому что он тайпкастит весь массив. Делаем так, чтобы весь массив тайпкастить


        //Преобразование распространенных типов с помощью инициализаторов
        //ТАК НЕЛЬЗЯ!
        //Нельзя принудительно привести число к стркое, так как это два разных значения.
        //А тайпкастинг - это переосмысление
        /*
        let number = 5
        let text = number as! String
        */
        //Нужно вот так
        //Это новое значение от number, а не переосмысление
        let number = 5
        let text = String(number)
        print(text)

        //Пример замыкания, реально часто использующийся
        /*
        let vw = UIView()

        UIView.animate(withDuration: 0.5, animations: {
            vw.alpha = 0
        })
        */

        //Синтаксический сахар в Swift:
        //Если последний параметр метода принимает замыкание(animations в примере), можно его сократить
        /*
        let vw = UIView()

        UIView.animate(withDuration: 0.5) {
            vw.alpha = 0
        }
        */

        
    }
    
}
