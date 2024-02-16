//
//  Astronaut.swift
//  Moonshot
//
//  Created by Luis Enrique Rosas Espinoza on 13/02/24.
//

import Foundation

struct Astronaut: Codable, Identifiable, Hashable {
    let id: String
    let name: String
    let description: String
}
