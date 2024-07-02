//
//  Modelo1.swift
//  JsonApp
//
//  Created by Lean on 02/07/2024.
//

import Foundation

struct Modelo1: Decodable {
    var id: Int
    var name : String
    var email : String
    var address : Address
}

struct Address : Decodable {
    var street: String
    var geo: Geo
}

struct Geo: Decodable {
    var lat: String
}

