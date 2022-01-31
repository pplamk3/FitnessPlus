//
//  Studio.swift
//  Fitness+
//
//  Created by Lam Perth on 13/11/2021.
//

import Foundation

struct Studio: Identifiable{
    var id: UUID?
    var studioName: String
    var type: String
    var studioImage: String
    var studioAddress: String
    var equipment: String
    var isFavorite: Bool
    
    
}
