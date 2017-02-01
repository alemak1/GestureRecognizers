//
//  ViewController.swift
//  Gestures
//
//  Created by Aleksander Makedonski on 2/1/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var originalRect: CGRect!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        originalRect = imageView.frame
        
        var tempImageView: UIImageView
        tempImageView = UIImageView(image: UIImage(named: "flower.png"))
        tempImageView.frame = originalRect
        view.addSubview(tempImageView)
        self.imageView = tempImageView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func foundTap(_ sender: UITapGestureRecognizer) {
        outputLabel.text = "Tapped"
        let location: CGPoint = sender.location(in: view)
        print("You tapped at the coordinates: x - \(location.x), y - \(location.y)")
    }
   
    
    @IBAction func foundSwipe(_ sender: UISwipeGestureRecognizer) {
        outputLabel.text = "Swipe"
    }
    
    
    @IBAction func foundPinch(_ sender: UIPinchGestureRecognizer) {
        var feedback: String
        var scale: CGFloat = sender.scale
        imageView.transform = CGAffineTransform(rotationAngle: 0.0)
        feedback = String(format: "Pinched, Scale: %1.2f, Velocity: %1.2f", Float(sender.scale),Float(sender.velocity))
        outputLabel.text = feedback
        imageView.frame = CGRect(origin: originalRect.origin, size: CGSize(width: scale*originalRect.size.width, height: scale*originalRect.size.height))
    }
    
    
    @IBAction func foundRotation(_ sender: UIRotationGestureRecognizer) {
        let rotation: CGFloat = sender.rotation
        let feedback: String = String(format: "Rotated, Radians: %1.2f, Velocity: %1.2f",Float(sender.rotation), Float(sender.velocity))
        outputLabel.text = feedback
        imageView.transform = CGAffineTransform(rotationAngle: rotation)

        
    }
    
    

}

