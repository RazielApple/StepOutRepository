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
    
    @Published var minutes: Int = 0
    @Published var seconds: Int = 0
    
    
    func startTimer(){
        withAnimation(.easeInOut(duration: 0.25)){isStarted = true}
        timerStringValue = "\(minutes == 0 ? )"" : "\(minutes):")\(seconds >= 10 ?)"\(seconds)":"0\(seconds)")"
    }
    
    func stopTimer(){
        
    }
    
    func updateTimer(){
        
    }
}
