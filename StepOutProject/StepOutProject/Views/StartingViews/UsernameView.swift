//
//  UsernameView.swift
//  StepOutProject
//
//  Created by antonia on 22/10/22.
//

import SwiftUI

struct UsernameView: View {
    
    @State private var textfieldText: String = ""
    @StateObject private var keyboardHandler = KeyboardHandler()

    
    var body: some View {
        
        NavigationStack {
            ZStack{
                
                LinearGradient(gradient: Gradient(colors: [Color("SfondoGradiente1"), Color("SfondoGradiente2")]), startPoint: .top, endPoint: .bottom)
                        .ignoresSafeArea()
                    Image("SquaresInBackground-04")
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
                    
                    
                }.padding(.bottom, keyboardHandler.keyboardHeight)
               
//                NavigationLink("Go", destination: ChoosingCharacterView().navigationBarBackButtonHidden(true))
//
//                    .frame(width: 50)
//                    .font(.title2)
//                    .fontWeight(.heavy)
//
//                    .cornerRadius(40)
//                    .offset(x: 130, y:285)
//                    .foregroundColor(.white)
               
                NavigationLink {
                    ChoosingCharacterView()
                } label: {
                    
                    Image(systemName: "control")
                        .rotationEffect(.degrees(90))
                        .offset(x: 120, y: 286)
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                }
            }
        }
    }
}

struct UsernameView_Previews: PreviewProvider {
    static var previews: some View {
        UsernameView()
    }
}
