//
//  Challenge1.swift
//  StepOutProject
//
//  Created by antonia on 26/10/22.
//

import SwiftUI

struct ChallengeCardTemplate: View {
    
    var body: some View {
        ZStack (alignment: .top){
            Rectangle()
                .frame(width: 290, height: 425)
                .cornerRadius(20)
                .foregroundColor(.white)
                            .shadow(color: Color.black .opacity(0.5), radius: 20, x: 0, y: 20)
            
            
            VStack {
                Text("AUDACITY BOOST CHALLENGE")
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                Image("Audacity")
                Text("Your challenge is simple: walk backwards! And do what you want but it’s not important because i need to fill text. Easy peasy... ")
                    .multilineTextAlignment(.center)
                    .frame(width: 250.0)
                
                ZStack{
                    Image("RettangoloA")
                    VStack{
                        HStack {
                            
                            Text("Time")
                                .foregroundColor(.white)
                                .fontWeight(.heavy)
                                Spacer()
                            
                            Text("Reward")
                                .foregroundColor(.white)
                                .fontWeight(.heavy)
                            Spacer()
                        }
                        
                        HStack{
                            Image(systemName: "timer")
                                .foregroundColor(.white)
                                .fontWeight(.heavy)
                            Text("5 min")
                                .foregroundColor(.white)
                            Spacer()
                            Spacer()
                            Image("XP")
                            Text("100")
                                .foregroundColor(.white)
                            Image(systemName: "flame.fill")
                                .foregroundColor(.white)
                            Text("+5")
                                .foregroundColor(.white)
                            Spacer()
                        }
                    }
                        .padding(.horizontal, 70.0)
                        
                        
                        
                        
                        //                    HStack{
                        //                        Spacer()
                        //                        VStack{
                        //                            Text("Time")
                        //                                .fontWeight(.heavy)
                        //                                .foregroundColor(.white)
                        //
                        //                            HStack {
                        //                                Image(systemName: "timer")
                        //                                    .foregroundColor(.white)
                        //
                        //                                Text("5 min")
                        //                                    .foregroundColor(.white)
                        //
                        //                            }
                        //
                        //                        }
                        //
                        //                       Spacer()
                        //                        VStack{
                        //                            Text("Reward")
                        //                                .fontWeight(.heavy)
                        //                                .foregroundColor(.white)
                        //
                        //
                        //                            HStack{
                        //                                Image("XP")
                        //                                Text("100")
                        //                                    .foregroundColor(.white)
                        //                                    .padding(.trailing)
                        //                                Image(systemName: "flame.fill")
                        //                                    .foregroundColor(.white)
                        //                                Text("+5")
                        //                                    .foregroundColor(.white)
                        //                            }
                        //                        }
                        //                        Spacer()
                        //                    } .padding(.horizontal)
                        
                    
                    
                } .padding(.top)
                
                
            }
            
            
            
        }
    }
}
struct Challenge1_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeCardTemplate()
    }
}
