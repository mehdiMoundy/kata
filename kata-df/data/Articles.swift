//
//  Articles.swift
//  kata-df
//
//  Created by Mehdi on 02/03/2023.
//

import Foundation

struct Articles: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var content: String
    var cover: String
}
