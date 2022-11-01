//
//  TimerView.swift
//  StepOutProject
//
//  Created by Gabriella Annunziata on 01/11/22.
//

import SwiftUI

struct TimerView: View {
    @StateObject var timerProgress: TimerProgress = .init()
    
    var body: some View {
        
        NavigationStack {
            ZStack {
        
                    Color("AudacityColor")
                        .ignoresSafeArea()
                   
               
                    VStack(spacing: 20.0) {
                                NavigationLink(destination: ChoosingChallengeView().navigationBarBackButtonHidden(true)) {
                                    Image(systemName: "xmark")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding(.top, 20)
                                    .padding(.leading, 270)
                                }
                                
                                 
                                Text("AUDACITY BOOST CHALLENGE")
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
                                    .stroke(Color("AudacityColor"), lineWidth: 15)
                                    .frame(width: 210, height: 210)
                                    
                                    )
                            
                            Circle()
                                .foregroundColor(Color("AudacityColor"))
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
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }label: {
                                Image(systemName:  "arrow.triangle.2.circlepath")
                                    .resizable()
                                    .foregroundColor(Color("AudacityColor"))
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
                                    timerProgress.stopTimer()
                                    
                                }else {
                                    timerProgress.startTimer()
                                }
                            }label: {
                                Image(systemName:!timerProgress.isStarted ? "play.fill" : "pause.fill")
                                    .resizable()
                                    .foregroundColor(Color("AudacityColor"))
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
