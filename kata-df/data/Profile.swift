//
//  Profile.swift
//  kata-df
//
//  Created by Mehdi on 08/03/2023.
//

import Foundation

struct Profile {
    var userName: String
    var userSurname: String
    var userAvatar = Avatars.Mec1
    var userEmail: String
    var userBirthday = Date()

    static let `default` = Profile(userName: "Bob",userSurname: "Leponge",userEmail: "bob@gmail.com")

    enum Avatars: String, CaseIterable, Identifiable {
        case Mec1 = "Raphael"
        case Mec2 = "Drago"
        case Meuf1 = "ChunLi"
        case Meuf2 = "Merida"
        case Animal = "DogAvatar"
        case Animal2 = "Cat"
        case Animal3 = "Bunny"

        
        var id: String { rawValue }
    }
}
