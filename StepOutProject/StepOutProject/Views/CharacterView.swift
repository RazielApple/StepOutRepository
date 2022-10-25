//
//  CharacterView.swift
//  StepOutProject
//
//  Created by Gabriella Annunziata on 24/10/22.
//

import SwiftUI

struct CharacterView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("SfondoGradiente1"), Color("SfondoGradiente2")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                
                Text("Who are you ? ")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 650.0)
                
                
                
                    
                    
            }
        }
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}
