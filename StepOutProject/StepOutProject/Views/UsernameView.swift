//
//  UsernameView.swift
//  StepOutProject
//
//  Created by antonia on 22/10/22.
//

import SwiftUI

struct UsernameView: View {
    
    @State private var textfieldText: String = ""
    
    var body: some View {
        
        ZStack{
            
                Color("Sfondo")
                    .ignoresSafeArea()
                Image("Welcome")
                    .padding(.bottom, 100.0)
               
            VStack {
                Text("WELCOME TO STEP OUT")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .offset(y: 180)
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.horizontal, 40.0)
                    
                
                    Text("Username")
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .offset(x: -52, y: 250)
                            
                        Rectangle()
                            .frame(width: 220, height: 40)
                            .cornerRadius(100)
                            .offset(y:250)
                            .foregroundColor(.white)
                            .opacity(0.3)
                    
                        
                        
                TextField("", text: $textfieldText)
                    .offset(x: 101, y:210)
                    .foregroundColor(.white)
                    .submitLabel(.go)
                
                
            }
           

    }
    }
}

struct UsernameView_Previews: PreviewProvider {
    static var previews: some View {
        UsernameView()
    }
}