//
//  TesterView.swift
//  StepOutProject
//
//  Created by Gabriella Annunziata on 30/10/22.
//

import SwiftUI

struct TesterView: View {
    
    @State private var challenges: [Challenge] = [
        Challenge(x: 0, name: "AUDACITY BOOST CHALLENGE", image: "Audacity", description: "Your challenge is simple: walk backwards! And do what you want but it’s not important because i need to fill text. Easy peasy... ", rectangle: "RettangoloA", time: 5, xp: 100, point: 5, symbol: "flame.fill"),
        Challenge(x: 1, name: "PUBLIC SPEAKING BOOST CHALLENGE", image: "Public", description: "Your challenge is simple: walk backwards! And do what you want but it’s not important because i need to fill text. Easy peasy... ", rectangle: "RettangoloP", time: 5, xp: 100, point: 5, symbol: "megaphone.fill"),
        Challenge(x: 2,name: "SOCIABILITY BOOST CHALLENGE", image: "Sociability", description: "Your challenge is simple: walk backwards! And do what you want but it’s not important because i need to fill text. Easy peasy... ", rectangle: "RettangoloS", time: 5, xp: 100, point: 5, symbol: "person.2.fill")
        
    ]
    @State private var snappedItem = 0.0
    @State private var draggingItem = 0.0
    
    
    var body: some View {
        ZStack{
            
            ForEach(challenges) { item in
                ZStack (alignment: .top){
                    Rectangle()
                        .frame(width: 290, height: 425)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                        .shadow(color: Color.black .opacity(0.5), radius: 20, x: 0, y: 20)
                    
                    
                    VStack {
                        Text(item.name)
                            .font(.title)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                        Image(item.image)
                        Text(item.description)
                            .multilineTextAlignment(.center)
                            .frame(width: 250.0)
                        
                        ZStack{
                            Image(item.rectangle)
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
                                    Text(String(item.time))
                                        .foregroundColor(.white)
                                    Spacer()
                                    Spacer()
                                    Image("XP")
                                    Text(String(item.xp))
                                        .foregroundColor(.white)
                                    Image(systemName: item.symbol)
                                        .foregroundColor(.white)
                                    Text("+\(item.point)")
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                            }
                            .padding(.horizontal, 70.0)
                        } .padding(.top)
                        
                    }
                    
                }.scaleEffect(1.0 - abs(distance(item.x)) * 0.2)
                    .opacity(1.0 - abs(distance(item.x)) * 0.3)
                    .offset(x: myXOffet(item.x), y: 0)
                    .zIndex(1.0 - abs(distance(item.x)) * 0.1)
            }
        }.gesture(
            DragGesture()
                .onChanged { value in
                    draggingItem = snappedItem + value.translation.width / 100
                }
                .onEnded { value in
                    withAnimation {
                        draggingItem = snappedItem + value.predictedEndTranslation.width / 100
                        draggingItem = round(draggingItem).remainder(dividingBy: Double(challenges.count))
                        snappedItem = draggingItem
                    }
                    
                })
    
    }
    func distance(_ item: Int) -> Double{
        return (draggingItem - Double(item)).remainder(dividingBy: Double(challenges.count))
    }
    
    func myXOffet(_ item: Int) -> Double{
        let angle = Double.pi * 2 / Double(challenges.count) * distance(item)
        return sin(angle) * 200
    }
}


struct TesterView_Previews: PreviewProvider {
    static var previews: some View {
        TesterView()
    }
}
