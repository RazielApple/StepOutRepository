//
//  SwiftUIView.swift
//  StepOutProject
//
//  Created by William Benigno on 27/10/22.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State var loading : String = ""
    @State var timer = Timer.publish(every: 0.03, on: RunLoop.main, in: .common).autoconnect()
    @State var index = 0
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("SfondoGradiente1"), Color("SfondoGradiente2")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Spacer()
                
                Image("Shapeshifter")
                    .resizable()
                    .frame(width: 85,height: 102)
                    .padding(.bottom, 10)
                
                Text("Get ready for your new challenges!")
                    .foregroundColor(.white)
                    .padding(.bottom, -10)
                
                Image(loading)
                    .resizable()
                    .frame(width: 80, height: 50, alignment: .center)
                    .padding(.bottom, 10)
                    .onReceive(timer) { _ in
                        loading = "Loading\(index)"
                        
                        index += 1
                        
                        if (index > 34){
                            index = 0
                            
                        }
                    }
                
            
                Spacer()
                        
                    }
            }
        }
    }


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
