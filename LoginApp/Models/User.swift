//
//  User.swift
//  LoginApp
//
//  Created by Антон Заричный on 17.08.2022.
//

import Foundation

struct Person {
    let user: User
    let information: Information
    let socialMedia: SocialMedia
    
    static func getPerson() -> Person {
        Person(user: User(userName: "tony", password: "123"),
               information: Information(engFullName: "Anton Zarichny",
                                        fullName: "Заричный Антон Андреевич",
                                        age: "23", studyPlace: "СПБПУ",
                                        workPlace: "ФТИ им. Иоффе",
                                        aboutMe: "Немного о себе"),
               socialMedia: SocialMedia(email: "antonzarichny@gmail.com",
                                        gitHub: "github.com/zzzarya",
                                        telegram: "@zarek9",
                                        instagram: "a_zarichny"))
    }
}


struct User {
    let userName: String
    let password: String
}

struct Information {
    let engFullName: String
    let fullName: String
    let age: String
    let studyPlace: String
    let workPlace: String
    let aboutMe: String
}

struct SocialMedia {
    let email: String
    let gitHub: String
    let telegram: String
    let instagram: String
}



