//
//  ViewController.swift
//  Midterm-Swift
//
//  Created by Nav Bhatti on 2015-02-25.
//  Copyright (c) 2015 Nav Bhatti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var square: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapGesture(sender: UITapGestureRecognizer) {
        self.square.center = sender.locationInView(self.view);
    }

    @IBAction func swipeGesture(sender: UISwipeGestureRecognizer) {
        if( sender.direction == UISwipeGestureRecognizerDirection.Right ||
        sender.direction == UISwipeGestureRecognizerDirection.Left )
        {
            self.view.backgroundColor = getRandomColor();
        }else{
            self.square.backgroundColor = getRandomColor();
        }
    }
    
    @IBAction func pinchGesture(sender: UIPinchGestureRecognizer) {
        self.square.transform = CGAffineTransformMakeScale(sender.scale, sender.scale);
    }
    
    @IBAction func longPressGesture(sender: UILongPressGestureRecognizer) {
        self.square.backgroundColor = getRandomColor();
    }
    
    func getRandomColor() -> UIColor{
        var red:CGFloat = CGFloat(drand48());
        var green:CGFloat = CGFloat(drand48());
        var blue:CGFloat = CGFloat(drand48());
        return UIColor(red: red, green: green, blue: blue, alpha: 1);
    }
}

