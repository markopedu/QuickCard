//
//  User.swift
//  QuickCard
//
//  Created by Marko Poikkimäki on 2021-01-07.
//

import Foundation


struct User: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
    let title: String
    var email: String
    var companyUrl: String
    var address: String
}

extension User {
    
    static let users = [
        User(firstName: "John", lastName: "Doe", title: "Software Developer", email: "john.doe@gmail.com", companyUrl: "johndoecompany.com", address: "Big Street 123"),
        User(firstName: "Donald", lastName: "Duck", title: "Digital Creative", email: "donald.duck@gmail.com", companyUrl: "donaldduck.com", address: "Quack Street 123"),
        User(firstName: "Mickey", lastName: "Mouse", title: "DevOps Engineer", email: "mickey.mouse@gmail.com", companyUrl: "mmcompany.com", address: "Cat Street 123"),
        User(firstName: "Stefan", lastName: "Svensson", title: "Project Manager", email: "stefan.s@gmail.com", companyUrl: "stefanscompany.com", address: "Kings Street 55")
    ]
}
