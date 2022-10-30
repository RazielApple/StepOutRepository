//
//  WellDoneView.swift
//  StepOutProject
//
//  Created by antonia on 29/10/22.
//

import SwiftUI

struct AudacityWDView: View {
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
                // ROSA GRADIENTE
                    .background(LinearGradient(colors: [Color(red: 225/255, green: 98/255, blue: 160/255), Color(red: 225/255, green: 25/255, blue: 109/255)], startPoint: .top, endPoint: .bottom))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.white, lineWidth: 15))
                    .offset(y: -45)
            }
            VStack{
                Spacer()
                ZStack {
                    Image("Circle4")
                    Image("Shapeshifter")
                        .resizable()
                        .frame(width: 60, height: 71)
                    
                    
                }
                
                Text("Your reward:")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 5)
                    .background(Color("AudacityColor"))
                    .cornerRadius(20)
                
                
                
                HStack{
                    Image("XPA")
                        .fontWeight(.heavy)
                    Text("100")
                        .fontWeight(.medium)
                        .foregroundColor(Color("AudacityColor"))
                    
                    Image(systemName: "person.2.fill")
                        .foregroundColor(Color("AudacityColor"))
                    Text("+5")
                        .fontWeight(.medium)
                        .foregroundColor(Color("AudacityColor"))
                    
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 252, height: 183)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color("AudacityColor"), lineWidth: 2))
                    HStack{
                        VStack (alignment: .leading){
                            Text("Super item!")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding(.horizontal, 5)
                                .background(Color("AudacityColor"))
                                .cornerRadius(20)
                                .padding(.bottom)
                            Text("Come back tomorrow!")
                                .fontWeight(.semibold)
                                .frame(width: 100)
                            
                            
                            
                        }
                        Image("gameA")
                    }
                }
                Spacer()
                
            }

        Text("Back to Challenge")
                .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(20)
            .background(LinearGradient(colors: [Color(red: 225/255, green: 98/255, blue: 160/255), Color(red: 225/255, green: 25/255, blue: 109/255)], startPoint: .top, endPoint: .bottom))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.white, lineWidth: 10))
            .offset(y: 300)
    }
    }
}

struct AudacityWDView_Previews: PreviewProvider {
    static var previews: some View {
        AudacityWDView()
    }
}
