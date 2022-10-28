//
//  ChoosingCharacterView.swift
//  StepOutProject
//
//  Created by Gabriella Annunziata on 25/10/22.
//

import SwiftUI

struct ChoosingCharacterView: View {
    
    var characters: [Character] = [
        Character(name: "Adventurer", destription: "You don't fear the unknown! You're always ready to face new adventures", avatarImage: "Adventurer", levelAudacity: 20, levelPublicSpeaching: 5, levelSociability: 5),
        Character(name: "Orator", destription: "People love to listen to you! You always choose the right words", avatarImage: "Orator", levelAudacity: 5, levelPublicSpeaching: 20, levelSociability: 5),
        Character(name: "Companion", destription: "Doesn't matter where you are...you always find a way to make friends!", avatarImage: "Companion", levelAudacity: 5, levelPublicSpeaching: 5, levelSociability: 20),
        Character(name: "Shapeshifter", destription: "You still don't know who you are...or who you can become!", avatarImage: "Shapeshifter", levelAudacity: 10, levelPublicSpeaching: 10, levelSociability: 10)
        
]
    
    var body: some View {
        
      
        NavigationStack {
            ZStack{
                
                LinearGradient(gradient: Gradient(colors: [Color("SfondoGradiente1"), Color("SfondoGradiente2")]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                
                VStack {
                    
                    Text("Who are you ? ")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                    
                    TabView {
                   /* ScrollView (.horizontal, showsIndicators: true){
                            
                            HStack{
                               ForEach (characters){
                                    item in
                                    
                                    CharacterView(character: item)
                                }*/
                            
                               AdventurerView()
                                OratorView()
                                CompanionView()
                                ShapeshifterView()
                        
                    }.tabViewStyle(.page)
                            
                            
                            
                            
                            
                            
                            
                        }
                        Spacer()
            }
        }
            }
        }
    



struct ChoosingCharacterView_Previews: PreviewProvider {
    static var previews: some View {
        ChoosingCharacterView()
    }
}
func levelBarWidth (baseWidth: Double, skillpoints: Int) -> Double{
    return baseWidth * Double(skillpoints)
}
