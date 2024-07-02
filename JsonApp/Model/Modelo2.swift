//
//  Modelo2.swift
//  JsonApp
//
//  Created by Lean on 02/07/2024.
//

import Foundation

struct Modelo2: Decodable{
    var data : [UserList]
}


struct UserList: Decodable {
    var id: Int
    var first_name: String
    var email: String
    var avatar: String
}
