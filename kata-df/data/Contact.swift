//
//  Contact.swift
//  kata-df
//
//  Created by Mehdi on 08/03/2023.
//

import Foundation

struct Contacts: Hashable, Codable, Identifiable {
    var id: Int
    var societyName: String
    var flag: String
    var direction: String
}
