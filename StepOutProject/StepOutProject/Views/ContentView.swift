//
//  ContentView.swift
//  StepOutProject
//
//  Created by Fabio Barbato on 24/10/22.
//
//
//import SwiftUI
//
//struct ContentView: View {
//    
//    //@State private var isLoading = false
//    var body: some View {
//        VStack {
//            List{
//                ForEach(vm.savedEntities){ entity in
//                    Text(entity.username ?? "marinella")
//                        .foregroundColor(.white)
//                        
//                }.onDelete(perform: vm.deleteUser)
//            }
//        
//            
//            Text("Hello, world!")
//            
//            /* if isLoading{
//             SsLoadingView ()
//             }
//             
//             }.padding()
//             .onAppear{ startFakeNetworkCall()}
//             }
//             func startFakeNetworkCall (){
//             isLoading = true
//             DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: <#@MainActor @convention(block) () -> Void#>)
//             isLoading = false
//             }*/
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
