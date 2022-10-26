//
//  character.swift
//  StepOutProject
//
//  Created by Gabriella Annunziata on 25/10/22.
//

import Foundation

struct Character: Identifiable {
    
    var id: UUID = UUID()
    let name: String
    let destription: String
    let avatarImage: String
    let levelAudacity: Int
    let levelPublicSpeaching: Int
    let levelSociability: Int
    
}

