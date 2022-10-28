//
//  ContentView.swift
//  StepOutProject
//
//  Created by Fabio Barbato on 24/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView{
                
                Text("Hello, world!")
                Text("Hello")
                Text("World")
            }.tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
