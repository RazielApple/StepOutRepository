//
//  LoadingDots.swift
//  StepOutProject
//
//  Created by William Benigno on 27/10/22.
//

import SwiftUI

struct Gif {
    
    @State var loading : String = ""
    @State var timer = Timer.publish(every: 0.08, on: RunLoop.main, in: .common).autoconnect()
    @State var index = 0
    
    
    Image(loading)
        .resizable()
        .frame(width: 100, height: 100, alignment: .center)
        .position(x: 210,y: 600)
        .onReceive(timer) { _ in
            loading = "Loading\(index)"
            
            index += 1
            
            if (index > 34){
                index = 0
                
            }
        }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
