//
//  Animation.swift
//  RandomSpring
//
//  Created by Nechaev Sergey  on 22.09.2021.
//

import Foundation

struct Animation {
    let animationName: String
    let animationCurve: String
    let animationForce: Float
    let animationDuration: Float
    
}

extension Animation {
    static func getAnimationList() -> [Animation] {
        
        var animations: [Animation] = []
        
        let animationNames = DataManager.shared.animationNames.shuffled()
        let curves = DataManager.shared.curves.shuffled()
        let forceValues = DataManager.shared.forceValues.shuffled()
        let durationValues = DataManager.shared.durationValues.shuffled()
        
        let iterationCount = min(animationNames.count, curves.count, forceValues.count, durationValues.count)
        
        for index in 0..<iterationCount {
            let animation = Animation(
                animationName: animationNames[index],
                animationCurve: curves[index],
                animationForce: forceValues[index],
                animationDuration: durationValues[index]
            )
            
            animations.append(animation)
        }
        
        return animations
    }
    
}
