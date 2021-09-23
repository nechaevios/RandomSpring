//
//  MainViewController.swift
//  RandomSpring
//
//  Created by Nechaev Sergey  on 22.09.2021.
//

import Spring

class MainViewController: UIViewController {
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var runButtonLabel: SpringButton!
    
    @IBOutlet weak var animationNameLabel: UILabel!
    @IBOutlet weak var animationCurveLabel: UILabel!
    @IBOutlet weak var animationForceLabel: UILabel!
    @IBOutlet weak var animationDurationLabel: UILabel!
    
    private let animations = Animation.getAnimationList()
    private var nextAnimationIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextAnimationIndex = getRandomIndex()
        updateLabels()
        
    }
  
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        updateLabels()
        setAnimationSettings()
        springAnimationView.animate()
        
        sender.animation = "pop"
        sender.force = 0.3
        sender.animate()
        
        nextAnimationIndex = getRandomIndex()
        updateButtonTitle()
        
    }
    
    private func getRandomIndex() -> Int {
        Int.random(in: 0..<animations.count)
        
    }
    
    private func setAnimationSettings() {
        springAnimationView.animation = animations[nextAnimationIndex].animationName
        springAnimationView.curve = animations[nextAnimationIndex].animationCurve
        springAnimationView.force = CGFloat(animations[nextAnimationIndex].animationForce)
        springAnimationView.duration = CGFloat(animations[nextAnimationIndex].animationDuration)
        
    }
    
    private func updateLabels() {
        animationNameLabel.text = animations[nextAnimationIndex].animationName
        animationCurveLabel.text = animations[nextAnimationIndex].animationCurve
        animationForceLabel.text = String(animations[nextAnimationIndex].animationForce)
        animationDurationLabel.text = String(animations[nextAnimationIndex].animationDuration)
        
    }
    
    private func updateButtonTitle() {
        runButtonLabel.setTitle("Run next animation: \(animations[nextAnimationIndex].animationName)" , for: .normal)
        
    }
    
}
