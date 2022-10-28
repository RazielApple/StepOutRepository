//
//  ChoosingCharacterView.swift
//  StepOutProject
//
//  Created by Gabriella Annunziata on 25/10/22.
//

import SwiftUI

struct ChoosingCharacterView: View {
    
    
    var body: some View {
        
        
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [Color("SfondoGradiente1"), Color("SfondoGradiente2")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            
            VStack {
                
                Text("Who are you ? ")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                
                    
                ScrollView (.horizontal, showsIndicators: true){
                        
                        HStack{
                        
                            AdventurerView()
                            OratorView()
                            CompanionView()
                            ShapeshifterView()
                        }
                        
                        
                        
                        
                        
                        
                        
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
