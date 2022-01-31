//
//  StudioModel.swift
//  Fitness+
//
//  Created by Lam Perth on 13/11/2021.
//

import Foundation

class StudioModel: ObservableObject {
    @Published var studios = [Studio]()
   
    init() {
        studios.append(Studio(id: UUID(), studioName: "Patti Catti Studio", type: "Yoga Studio\n", studioImage: "icon", studioAddress: "Room 133, Nova 2, \nCareer & Kenson Industrial Mansion, \n58 Hung To Road, Kwun Tong Hong Kong\n", equipment: "Yoga Block *6 \nYoga Wheel *6 ", isFavorite: true))
        
        studios.append(Studio(id: UUID(), studioName: "Testing Studio", type: "Yoga Studio\n", studioImage: "yoga", studioAddress: "No address\n", equipment: "Yoga Block *4 \nYoga Strap *3 ", isFavorite: false))
        
        studios.append(Studio(id: UUID(), studioName: "Eric Fitness", type: "Gym Room\n", studioImage: "eric", studioAddress: "Pok Fu Lam Road\n", equipment: "Gym eqipmens", isFavorite: true))
        
    }
}
