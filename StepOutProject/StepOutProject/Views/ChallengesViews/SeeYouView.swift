//
//  ChoosingChallengeView.swift
//  StepOutProject
//
//  Created by Gabriella Annunziata on 28/10/22.
//

import SwiftUI


struct SeeYouView: View {
    
    var skills: [Skill] = [
        Skill(name: "Audacity", color: "AudacityColor", symbol: "flame.fill", points: 15),
        Skill(name: "Public Speaking", color: "PublicSpeakingColor", symbol: "megaphone.fill", points: 10),
        Skill(name: "Sociability", color: "SociabilityColor", symbol: "person.2.fill", points: 10)
        
    ]
    
    @State var indicatoreCharacter: Int = 0

    @State private var snappedItem = 0.0
    @State private var draggingItem = 0.0
    
    var characters: [Character] = [
        Character(name: "Adventurer", avatarImage: "Adventurer", abbreviazione: "ADV", levelAudacity: 1, levelPublicSpeaching: 1, levelSociability: 1),
        Character(name: "Orator", avatarImage: "Orator", abbreviazione: "ORTR", levelAudacity: 1, levelPublicSpeaching: 1, levelSociability: 1),
        Character(name: "Companion", avatarImage: "Companion", abbreviazione: "COMP", levelAudacity: 1, levelPublicSpeaching: 1, levelSociability: 1),
        Character(name: "Shapeshifter", avatarImage: "Shapeshifter", abbreviazione: "SHIFT", levelAudacity: 1, levelPublicSpeaching: 1, levelSociability: 1)
        
    ]
    
    var body: some View {
        
            VStack{
                HStack {
                    // OMINO
                    Spacer()
                    Spacer()
                    Spacer()
                    ZStack{
                        Circle()
                            .frame(width: 60, height: 60)
                            .foregroundColor(Color("ColorLevel"))
                        Image(characters[3].avatarImage)
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("1")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.top, 70.0)
                        
                    }
                    
                    
                    VStack {
                        HStack{
                            Spacer()
                            ForEach(vm.savedEntities){ entity in
                                Text(entity.username ?? "marinella")
                                .foregroundColor(.white)}
                            Spacer()
                            Image(characters[3].abbreviazione)
                            Spacer()
                        }
                        
                        
                        
                        ZStack (alignment: .leading){
                            RoundedRectangle(cornerRadius: 50)
                                .foregroundColor(.white)
                                .frame(width: 200, height: 20)
                            RoundedRectangle(cornerRadius: 50)
                                .foregroundColor(Color("ColorLevel"))
                                .frame(width: 100, height: 20)
                            
                        }
                        
                        
                    }
                    
                    Spacer()
                    
                 
                }
                Spacer()
                Image(characters[3].avatarImage)
                    .resizable()
                    .frame(width: 100, height: 120)
                    .padding()
            
                    
                
                Text("See you tomorrow!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    
                    
                
                Spacer()
                
                ForEach(skills) { item in
                    HStack{
                        Image(systemName: item.symbol)
                            .resizable()
                            .foregroundColor(Color(item.color))
                            .frame(width: 17, height: 20)
                        Text(item.name)
                            .fontWeight(.bold)
                            .foregroundColor(Color(item.color))
                        
                        
                    }
                    
                    
                    HStack{
                        
                        
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 300, height: 21)
                            .cornerRadius(10)
                            .overlay(Rectangle ()
                                .foregroundColor(Color(item.color))
                                .frame(width: levelBarWidth(baseWidth: 3, skillpoints: item.points)
                                      )
                                    .cornerRadius(10),alignment: .leading)
                        
                        
                        Text(String(item.points))
                            .foregroundColor(Color(item.color))
                            .fontWeight(.bold)
                        
                    }
                    
                    
                }
            }.background(LinearGradient(gradient: Gradient(colors: [Color("SfondoGradiente1"), Color("SfondoGradiente2")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea())
        
        
        
    }
    
    
    
    
}
  
    
struct SeeYouView_Previews: PreviewProvider {
    static var previews: some View {
        SeeYouView()
    }
}
