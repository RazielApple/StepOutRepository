//
//  WellDoneView.swift
//  StepOutProject
//
//  Created by antonia on 29/10/22.
//

import SwiftUI

struct SociabilityWDView: View {
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
                // AZZURRO GRADIENTE
                    .background(LinearGradient(colors: [Color(red: 120/255, green: 225/255, blue: 225/255), Color(red: 0/255, green: 221/255, blue: 236/255)], startPoint: .top, endPoint: .bottom))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.white, lineWidth: 15))
                    .offset(y: -45)
            }
            VStack{
                Spacer()
                ZStack {
                    Image("Circle3")
                    Image("Shapeshifter")
                        .resizable()
                        .frame(width: 60, height: 71)
                    
                    
                }
                
                Text("Your reward:")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 5)
                    .background(Color("SociabilityColor"))
                    .cornerRadius(20)
                
                
                
                HStack{
                    Image("XPS")
                        .fontWeight(.heavy)
                    Text("100")
                        .fontWeight(.medium)
                        .foregroundColor(Color("SociabilityColor"))
                    
                    Image(systemName: "person.2.fill")
                        .foregroundColor(Color("SociabilityColor"))
                    Text("+5")
                        .fontWeight(.medium)
                        .foregroundColor(Color("SociabilityColor"))
                    
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 252, height: 183)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color("SociabilityColor"), lineWidth: 2))
                    HStack{
                        VStack (alignment: .leading){
                            Text("Super item!")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding(.horizontal, 5)
                                .background(Color("SociabilityColor"))
                                .cornerRadius(20)
                                .padding(.bottom)
                            Text("Come back tomorrow!")
                                .fontWeight(.semibold)
                                .frame(width: 100)
                            
                            
                            
                        }
                        Image("gameS")
                    }
                }
                Spacer()
                
            }

        Text("Back to Challenge")
                .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(20)
            .background(LinearGradient(colors: [Color(red: 120/255, green: 225/255, blue: 225/255), Color(red: 0/255, green: 221/255, blue: 236/255)], startPoint: .top, endPoint: .bottom))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.white, lineWidth: 10))
            .offset(y: 300)
    }
    }
}

//struct SociabilityWDView_Previews: PreviewProvider {
//    static var previews: some View {
//        SociabilityWDView()
//    }
//}
