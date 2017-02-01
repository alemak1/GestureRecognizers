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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func foundTap(_ sender: UITapGestureRecognizer) {
    }
   
    
    @IBAction func foundSwipe(_ sender: UISwipeGestureRecognizer) {
    }
    
    
    @IBAction func foundPinch(_ sender: UIPinchGestureRecognizer) {
    }
    
    
    @IBAction func foundRotation(_ sender: UIRotationGestureRecognizer) {
    }
    
    

}

