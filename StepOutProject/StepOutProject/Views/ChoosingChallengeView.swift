//
//  ChoosingChallengeView.swift
//  StepOutProject
//
//  Created by antonia on 26/10/22.
//

import SwiftUI

struct ChoosingChallengeView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("SfondoGradiente1"), Color("SfondoGradiente2")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                HStack {
                    // OMINO
                    Spacer()
                    Spacer()
                    Spacer()
                    ZStack{
                        
                        Circle()
                            .frame(width: 60, height: 60)
                            .foregroundColor(Color("SociabilityColor"))
                        Image("Orator")
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
                            Text("marinella")
                                .foregroundColor(.white)
                            Spacer()
                            Image("SHIFT")
                            Spacer()
                        }
                        
                        
                        
                        ZStack (alignment: .leading){
                            RoundedRectangle(cornerRadius: 50)
                                .foregroundColor(.white)
                                .frame(width: 200, height: 20)
                            RoundedRectangle(cornerRadius: 50)
                                .foregroundColor(Color("ColorLevel"))
                                .frame(width: 20, height: 20)
                            
                        }
                        
                        
                    }
                    Spacer()
                }
                Spacer()
                
            }
            
            
            
            
            
        }
    }
}

struct ChoosingChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChoosingChallengeView()
    }
}
