//
//  TimerProgress.swift
//  StepOutProject
//
//  Created by Gabriella Annunziata on 01/11/22.
//

import Foundation
import SwiftUI

class TimerProgress: NSObject, ObservableObject {
    
    @Published var progress: CGFloat = 1
    @Published var timerStringValue: String = "00:00"
    @Published var isStarted: Bool = false
    @Published var isFinished: Bool = false
    @Published var isPaused: Bool = false
    @Published var minutes: Int = 0
    @Published var seconds: Int = 5
    @Published var totalSeconds: Int = 0
    @Published var staticTotalSeconds: Int = 0
    
    
    func startTimer(){
        withAnimation(.easeInOut(duration: 0.25)){isStarted = true; isPaused = false}
        timerStringValue = "\(minutes >= 10 ? "\(minutes):" : "0\(minutes):") \(seconds >= 10 ? "\(seconds)" : "0\(seconds)") "
        totalSeconds = (minutes * 60) + seconds
        staticTotalSeconds = totalSeconds
        
    }
    func pauseTimer(){
        withAnimation{
            isStarted = false
            isPaused = true
        }
    }
    
    func stopTimer(){
        withAnimation{
            
                isStarted = false
                minutes = 0
                seconds = 5
                progress = 1
            
        }
        totalSeconds = 0
        staticTotalSeconds =  0
        timerStringValue = "00:00"
    }
    
    func updateTimer(){
        
        totalSeconds -= 1
        progress = CGFloat(totalSeconds) / CGFloat(staticTotalSeconds)
        progress = (progress < 0 ? 0 : progress)
        minutes = (totalSeconds / 60) % 60
        seconds = (totalSeconds % 60)
        timerStringValue = "\(minutes >= 10 ? "\(minutes):" : "0\(minutes):") \(seconds >= 10 ? "\(seconds)" : "0\(seconds)") "
            if seconds == 0 && minutes == 0{
                isStarted = false
                isFinished = true
                
            }
        }
    }

