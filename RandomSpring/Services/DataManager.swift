//
//  DataManager.swift
//  RandomSpring
//
//  Created by Nechaev Sergey  on 23.09.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let animationNames = [
        "wobble", "flipY", "squeeze",
        "swing", "shake", "flipX", "morph"
    ]
    
    let curves = [
        "spring", "linear", "easeInOutExpo", "easeInOut",
        "easeInOutBack", "easeInCubic", "easeOutQuint", "easeOutQuad"
    ]
    
    let forceValues: [Float] = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1]
    
    let durationValues: [Float] = [0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6]
    
    private init() {}
}
