//
//  WellDoneView.swift
//  StepOutProject
//
//  Created by antonia on 29/10/22.
//

import SwiftUI

struct PublicWDView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors:[Color("SfondoGradiente1"), Color("SfondoGradiente2")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            
            ZStack (alignment: .top){
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 320, height: 467)
                    .foregroundColor(.white)
                
                Text("Well done!")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(15)
                // GIALLO GRADIENTE
                    .background(LinearGradient(colors: [Color(red: 255/255, green: 219/255, blue: 118/255), Color(red: 255/255, green: 195/255, blue: 38/255)], startPoint: .top, endPoint: .bottom))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.white, lineWidth: 15))
                    .offset(y: -45)
            }
            VStack{
                Spacer()
                ZStack {
                    Image("Circle2")
                    Image("Shapeshifter")
                        .resizable()
                        .frame(width: 60, height: 71)
                    
                    
                }
                
                Text("Your reward:")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 5)
                    .background(Color.yellow)
                    .cornerRadius(20)
                
                
                
                HStack{
                    Image("XPP")
                        .fontWeight(.heavy)
                    Text("100")
                        .fontWeight(.medium)
                        .foregroundColor(.yellow)
                    
                    Image(systemName: "megaphone.fill")
                        .foregroundColor(.yellow)
                    Text("+5")
                        .fontWeight(.medium)
                        .foregroundColor(.yellow)
                    
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 252, height: 183)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.yellow, lineWidth: 2))
                    HStack{
                        VStack (alignment: .leading){
                            Text("Super item!")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding(.horizontal, 5)
                                .background(Color.yellow)
                                .cornerRadius(20)
                                .padding(.bottom)
                            Text("Come back tomorrow!")
                                .fontWeight(.semibold)
                                .frame(width: 100)
                            
                            
                            
                        }
                        Image("gameP")
                    }
                }
                Spacer()
                
            }

        Text("Back to Challenge")
                .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(20)
            .background(LinearGradient(colors: [Color(red: 255/255, green: 219/255, blue: 118/255), Color(red: 255/255, green: 195/255, blue: 38/255)], startPoint: .top, endPoint: .bottom))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.white, lineWidth: 10))
            .offset(y: 300)
    }
    }
}

struct PublicWDView_Previews: PreviewProvider {
    static var previews: some View {
        PublicWDView()
    }
}
