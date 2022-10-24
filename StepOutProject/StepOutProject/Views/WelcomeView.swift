//
//  WelcomeView.swift
//  StepOutProject
//
//  Created by antonia on 21/10/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack{
            ZStack {
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
                    
                    NavigationLink("Start", destination: UsernameView()
                        .navigationBarBackButtonHidden(true))
                    .padding()
                    .frame(width: 170)
                    .font(.title)
                    .fontWeight(.heavy)
                    .background(.white)
                    .cornerRadius(40)
                    .offset(y: 250)
                    .foregroundColor(Color("Sfondo"))
                    
                }
                
            }
        }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
