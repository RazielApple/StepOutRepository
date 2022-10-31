//
//  Challenges.swift
//  StepOutProject
//
//  Created by antonia on 26/10/22.
//

import Foundation

struct Challenge: Identifiable {
    var id: UUID = UUID()
    let x: Int
    let name: String
    let image: String
    let rectangle: String
    let description: String
    let time: Int
    let xp: Int
    let point: Int
    let symbol: String

}
