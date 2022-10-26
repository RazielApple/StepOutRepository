//
//  OratorView.swift
//  StepOutProject
//
//  Created by Gabriella Annunziata on 25/10/22.
//

import SwiftUI

struct OratorView: View {
            
            var skills: [Skill] = [
                Skill(name: "Audacity", color: "AudacityColor", symbol: "flame.fill", points: 5),
                Skill(name: "Public Speaking", color: "PublicSpeakingColor", symbol: "megaphone.fill", points: 20),
                Skill(name: "Sociability", color: "SociabilityColor", symbol: "person.2.fill", points:  5)
                
            ]
            
            var body: some View {
                
                ZStack {
                    
                    
                    VStack {
                        
                        Image("Orator")
                            .resizable()
                            .frame(width:150, height: 138)
                        
                        Text("Orator")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("People love to listen to you! You always choose the right words")
                            .font(.title)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
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
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(item.color))
                                
                                
                                }
                            
                        }
                       
                        
                      
                        
                        
                        
                    }.padding()
                        .frame(width: 380)
                }
                
            }
        }
    


struct OratorView_Previews: PreviewProvider {
    static var previews: some View {
        OratorView()
    }
}
