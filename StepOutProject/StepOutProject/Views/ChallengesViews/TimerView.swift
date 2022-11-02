//
//  TimerView.swift
//  StepOutProject
//
//  Created by Gabriella Annunziata on 01/11/22.
//

import SwiftUI

struct TimerView: View {
    @StateObject var timerProgress: TimerProgress = .init()
    @State var color: String = "AudacityColor"
    @State var description: String = "Your challenge is simple: dance with strangers! In particularly, DANCE THE MACARENA! 3..2..1....GO"
    @State var name: String = "AUDACITY BOOST CHALLENGE"
   
    var body: some View {
        
        NavigationStack {
            ZStack {
        
                    Color(color)
                        .ignoresSafeArea()
                   
               
                    VStack(spacing: 20.0) {
                                NavigationLink(destination: ChoosingChallengeView().navigationBarBackButtonHidden(true)) {
                                    Image(systemName: "xmark")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding(.top, 20)
                                    .padding(.leading, 270)
                                }
                                
                                 
                        Text(name)
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color("SfondoGradiente2"))
                                    .multilineTextAlignment(.center)
                                    .padding(.top,10)
                                   
                        
                             
                        
                        ZStack{
                            
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 240, height: 240 )
                                .overlay(
                                Circle()
                                    .trim(from:0, to: timerProgress.progress)
                                    .stroke(Color(color), lineWidth: 15)
                                    .frame(width: 210, height: 210)
                                    
                                    )
                            
                            Circle()
                                .foregroundColor(Color(color))
                                .frame(width: 180, height: 180)
                            
                            
                                Image(systemName: "flame.fill")
                                    .resizable()
                                    .foregroundColor(.white)
                                .frame(width: 65, height: 80)
                                .rotationEffect(.init(degrees: 90))
                            
                            
                                
                }.rotationEffect(.init(degrees: -90))
                            .animation(.easeInOut, value: timerProgress.progress)
                            .padding(.top, 20)
                        
                        
                        Text(timerProgress.timerStringValue)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width: 273, height: 56)
                            .animation(.none, value: timerProgress.progress)
                            .onReceive(Timer.publish(every: 1, on: .main, in: .common).autoconnect()){
                                _ in
                                if timerProgress.isStarted{
                                    timerProgress.updateTimer()
                                }
                            }
                           
                        HStack(spacing: 100.0) {
                            
                            Button {
                                if timerProgress.isStarted || timerProgress.isPaused {
                                    timerProgress.stopTimer()
                                }
                            }label: {
                                Image(systemName:  "arrow.triangle.2.circlepath")
                                    .resizable()
                                    .foregroundColor(Color(color))
                                    .frame(width: 45, height: 40)
                                    .background(){
                                        Rectangle()
                                            .frame(width: 75, height: 75)
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                        
                                    }
                                
                            }
                           
                            
                            Button {
                                if timerProgress.isStarted {
                                    timerProgress.pauseTimer()
                                    
                                    }else {
                                    timerProgress.startTimer()
                                    
                                }
                            }label: {
                                Image(systemName:!timerProgress.isStarted ? "play.fill" : "pause.fill")
                                    .resizable()
                                    .foregroundColor(Color(color))
                                    .frame(width: 30, height: 35)
                                    .background(){
                                        Rectangle()
                                            .frame(width: 75, height: 75)
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                        
                                    }
                                
                            }
                           
                        }
                      Spacer()
                        NavigationLink(destination: AudacityWDView().navigationBarBackButtonHidden(true)){
                        Text("DONE")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(color))
                            .background(){
                                Rectangle()
                                    .frame(width: 100, height: 47)
                                    .cornerRadius(10)
                                .foregroundColor(.white)}
                            .opacity(timerProgress.isFinished == false ? 0 : 1)
                            }
                        
                         Spacer()
                         
                        
                        ZStack {
                            Rectangle()
                                .stroke(.white, lineWidth: 5)
                                .frame(width: 320, height: 125)
                            .cornerRadius(10)
                            VStack(spacing: 2.0){
                                
                                Text("Description")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                
                                Text(description)
                                    .font(.title3)
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 290,height: 90)
                                    .foregroundColor(.white)
                                    
                                
                            }
                        }
                        
                        }
            }
        
        }
        }
           
    
}
struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
