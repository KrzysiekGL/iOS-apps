//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Krzysztof Szczerbowski on 29/08/2018.
//  Copyright © 2018 Krzysztof Szczerbowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballImageIndex : Int = 0
    
    let ballImageNames = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askBall(_ sender: UIButton) {
        updateBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
    func updateBallImage() {
        ballImageIndex = Int(arc4random_uniform(5))
        
        ballImageView.image = UIImage(named: ballImageNames[ballImageIndex])
    }
}

