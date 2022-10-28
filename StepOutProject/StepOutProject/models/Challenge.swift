//
//  Challenges.swift
//  StepOutProject
//
//  Created by antonia on 26/10/22.
//

import Foundation

struct Challenge: Identifiable {
    var id: UUID = UUID()
    let name: String
    let image: String
    let description: String
    let time: Int
    let xp: Int
    let point: Int
    
}
struct Challenges {
    
    var listChallenge = [
        Challenge(name: "Audacity Challenge", image: "Audacity", description: "Your challenge is simple: walk backwards! And do what you want but it’s not important because i need to fill text. Easy peasy... ", time: 5, xp: 100, point: 5),
      
        Challenge(name: "Public Challenge", image: "Public", description: "Your challenge is simple: walk backwards! And do what you want but it’s not important because i need to fill text. Easy peasy... ", time: 10, xp: 100, point: 5),
        
        Challenge(name: "Social Challenge", image: "Social", description: "Your challenge is simple: walk backwards! And do what you want but it’s not important because i need to fill text. Easy peasy... ", time: 5, xp: 100, point: 5)
    ]
}
