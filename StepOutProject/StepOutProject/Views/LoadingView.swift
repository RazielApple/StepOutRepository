//
//  LoadingView.swift
//  StepOutProject
//
//  Created by Gabriella Annunziata on 27/10/22.
//

/*import SwiftUI

struct LoadingView: View {
    @State  private var isLoading = false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("SfondoGradiente1"), Color("SfondoGradiente2")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Image("Shapeshifter")
                
                Text("We are selecting your challenges,please wait")
                    .foregroundColor(.white)
                
                ProgressView()
                    .progressViewStyle()
                
            }
        }.onAppear {startFakeNetworkCall()}
    }
    
    func startFakeNetworkCall () {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            isLoading = false
        }
    }

}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
struct LoadingDots: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        
    }
}*/
