//
//  SociabilityCardView.swift
//  StepOutProject
//
//  Created by Gabriella Annunziata on 28/10/22.
//

import SwiftUI

struct SociabilityCardView: View {
    var body: some View {
        ZStack (alignment: .top){
            Rectangle()
                .frame(width: 290, height: 425)
                .cornerRadius(20)
                .foregroundColor(.white)
                .shadow(color: Color.black .opacity(0.5), radius: 20, x: 0, y: 20)
            
            
            VStack {
                Text("SOCIABILITY BOOST CHALLENGE")
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                Image("Sociability")
                Text("Your challenge is simple: walk backwards! And do what you want but it’s not important because i need to fill text. Easy peasy... ")
                    .multilineTextAlignment(.center)
                    .frame(width: 250.0)
                
                ZStack{
                    Image("RettangoloS")
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
                            Image(systemName: "person.2.fill")
                                .foregroundColor(.white)
                            Text("+5")
                                .foregroundColor(.white)
                            Spacer()
                        }
                    }
                    .padding(.horizontal, 70.0)
                } .padding(.top)
                
            }
            
        }
    }
}

struct SociabilityCardView_Previews: PreviewProvider {
    static var previews: some View {
        SociabilityCardView()
    }
}
