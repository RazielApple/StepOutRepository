//
//  ContentView.swift
//  StepOutProject
//
//  Created by Fabio Barbato on 24/10/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = CoreDataViewModel()

    //@State private var isLoading = false
    var body: some View {
        VStack {
            
            
            
                List{
                    ForEach(vm.savedEntities){ entity in
                        Text(entity.username ?? "marinella")
                            .foregroundColor(.white)
                            
                    }.onDelete(perform: vm.deleteUser)
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
