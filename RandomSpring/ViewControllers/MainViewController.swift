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
    
    @IBOutlet var animationData: [UILabel]!
    
    private let animations = Animation.getAnimationList()
    private var randomIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomIndex = getRandomIndex()
        setRandomAnimation()
        
    }
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        setRandomAnimation()
        springAnimationView.animate()
        
        sender.animation = "pop"
        sender.force = 0.3
        sender.animate()
        
        randomIndex = getRandomIndex()
        setRandomAnimation()
        setButtonText()
        
    }
    
    private func getRandomIndex() -> Int {
        Int.random(in: 0..<animations.count)
        
    }
    
    
    private func setRandomAnimation() {
        let randomAnimation = animations[randomIndex]
        
        springAnimationView.animation = randomAnimation.animationName
        springAnimationView.curve = randomAnimation.animationCurve
        springAnimationView.force = CGFloat(randomAnimation.animationForce)
        springAnimationView.duration = CGFloat(randomAnimation.animationDuration)
        
        setLabelsText(with: randomAnimation)
                
    }
    
    private func setLabelsText(with animation: Animation) {
        animationData[0].text = animation.animationName
        animationData[1].text = animation.animationCurve
        animationData[2].text = String(animation.animationForce)
        animationData[3].text = String(animation.animationDuration)
        
    }
    
    private func setButtonText() {
        let randomAnimation = animations[randomIndex]
        runButtonLabel.setTitle("Run next animation: \(randomAnimation.animationName)" , for: .normal)
        
    }
    
}
