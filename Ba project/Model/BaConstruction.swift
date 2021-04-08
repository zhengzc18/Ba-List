//
//  BaConstruction.swift
//  Ba project
//
//  Created by JAESOON on 2021/02/27.
//

import Foundation

class BaConstruction: Identifiable,Decodable {
    
    var id: UUID?
    var construction: String
    var featured: Bool
    var image: String
    var translation: String
    var description: String
    var example: [String]
    
}
