////
////  FirstDay.swift
////  100DaysOfSwift
////
////  Created by Kiryusha Orlov on 09.10.2021.
////
//
//import Foundation
//
//class FirstDay {
//
//   static func firstDayCheck() {
//
//        //MARK: - Variable, integer
//        //SWIFT не читает underscopes, и их можно писать для того, чтобы код был читабельнее
//        let cash = 10_000_000
//        print(cash)
//
//        //MARK: - Multi-line Strings
//        //Мульти-строки для себя (Чтобы удобнее видеть)
//        let str1 = """
//            some \
//            strings will be \
//            unusual
//            """
//        print("str1 - \(str1)")
//
//        //Мульти-строки для всех, но важно, чтобы тройные ковычки стояли на отдельных строках (Внимательно сравнить выводы)
//        let str2 = """
//            some
//            strings will be
//            unusual
//            """
//        print("str2 - \(str2)")
//
//        //В любую строку можно добавить "\n" чтобы сделать line break
//        let str3 = "some \n strings will be \n unusual"
//        print("str3 - \(str3)")
//
//        //В интерполяцию строк мы можем не только класть переменные, но и запускать код внутри
//        let example = "will be unusual"
//        let interpolation = "Some strings \(example)"
//        print(interpolation)
//
//        //Нельзя создать:
//        //var a: Int = 10.0
//        //var b: Bool = 1
//        //var c: String = 12345
//
//        //Но можно:
//        let d: Double = 10
//        print(d)
//
//
//    }
//
//
//}
