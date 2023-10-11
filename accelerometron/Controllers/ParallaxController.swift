//
//  ParallaxController.swift
//  accelerometron
//
//  Created by Jimmy Ghelani on 2023-10-11.
//

import Foundation
import CoreMotion

class ParallaxController: ObservableObject {
    @Published var x: Double = 0.0
    @Published var y: Double = 0.0
    
    private var manager: CMMotionManager
    
    init() {
        self.manager = CMMotionManager()
        self.manager.deviceMotionUpdateInterval = 1/60
        self.manager.startDeviceMotionUpdates(to: .main) { data, error in
            guard error == nil else {
                return
            }
            
            if let motionData = data {
                self.x = motionData.attitude.roll
                self.y = motionData.attitude.pitch
            }
        }
    }
}
