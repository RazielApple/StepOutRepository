//
//  ShapeshifterView.swift
//  StepOutProject
//
//  Created by Gabriella Annunziata on 25/10/22.
//

import SwiftUI

struct ShapeshifterView: View {
                    
                    var skills: [Skill] = [
                        Skill(name: "Audacity", color: "AudacityColor", symbol: "flame.fill", points: 10),
                        Skill(name: "Public Speaking", color: "PublicSpeakingColor", symbol: "megaphone.fill", points: 10),
                        Skill(name: "Sociability", color: "SociabilityColor", symbol: "person.2.fill", points: 10)
                        
                    ]
    
    
                    var body: some View {
                        
                        NavigationStack {
                            ZStack {
                                
                                
                                VStack {
                                    
                                    Image("Shapeshifter")
                                        .resizable()
                                        .frame(width:150, height: 138)
                                    
                                    Text("Shapeshifter")
                                        .font(.largeTitle)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                    
                                    Text("I still don't know who I am...or who I can become!")
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
                                                .foregroundColor(Color(item.color))
                                                .fontWeight(.bold)
                                            }
                                        
                                    }
                                   
                                    
                                  
                                    NavigationLink(destination: ChoosingChallengeView(indicatoreCharacter: 3,skills: skills).navigationBarBackButtonHidden(true)) {
                                        Text("Choose Me!")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                        .frame(width: 200, height: 60)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color("ButtonGradiente2"), Color("ButtonGradiente1")]), startPoint: .leading, endPoint: .trailing))
                                        .cornerRadius(10)
                                        .padding(.top, 45)
                                    }
                                    
                                    
                                }.padding()
                                    .frame(width: 380)
                            }
                        }
                        
                    }
                }


//struct ShapeshifterView_Previews: PreviewProvider {
//    static var previews: some View {
//        ShapeshifterView()
//    }
//}
