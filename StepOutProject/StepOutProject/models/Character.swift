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
    let avatarImage: String
    let abbreviazione: String
    let levelAudacity: Int
    let levelPublicSpeaching: Int
    let levelSociability: Int
    
}

