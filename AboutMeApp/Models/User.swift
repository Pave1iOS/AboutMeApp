//
//  User.swift
//  AboutMeApp
//
//  Created by Pavel Gribachev on 30.11.2023.
//

struct User {
    let userName = "1"
    let password = "1"
        
    let person: Person
    
    static func getUser() -> User {
        User(
            person: Person(
                name: "Pavel",
                lastName: "Gribachev",
                company: "Tax",
                department: "Engineering",
                post: "Shift supervisor",
                hobbies: "Boxing and prorgamming"
            )
        )
    }
}

struct Person {
    let name: String
    let lastName: String
    let company: String
    let department: String
    let post: String
    let hobbies: String
}
