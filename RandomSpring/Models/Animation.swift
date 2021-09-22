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
    
    static func getAnimations() -> [Animation] {
        [
            Animation(
                animationName: "wobble",
                animationCurve: "spring",
                animationForce: 0.7,
                animationDuration: 1.3
            ),
            Animation(
                animationName: "wobble",
                animationCurve: "linear",
                animationForce: 0.2,
                animationDuration: 1
            ),
            Animation(
                animationName: "flipY",
                animationCurve: "easeInOutExpo",
                animationForce: 1.2,
                animationDuration: 1
            ),
            Animation(
                animationName: "squeeze",
                animationCurve: "easeInOut",
                animationForce: 0.5,
                animationDuration: 0.9
            ),
            Animation(
                animationName: "swing",
                animationCurve: "easeInOutBack",
                animationForce: 1.1,
                animationDuration: 0.8
            ),
            Animation(
                animationName: "shake",
                animationCurve: "easeInCubic",
                animationForce: 0.4,
                animationDuration: 0.9
            ),
            Animation(
                animationName: "flipX",
                animationCurve: "easeOutQuint",
                animationForce: 1,
                animationDuration: 1
            ),
            Animation(
                animationName: "morph",
                animationCurve: "easeOutQuad",
                animationForce: 0.2,
                animationDuration: 0.8
            )
            
        ]
    }
}
