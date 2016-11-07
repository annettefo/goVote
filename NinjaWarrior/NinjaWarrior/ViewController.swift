//
//  ViewController.swift
//  NinjaWarrior
//
//  Created by Annette Fontanilla on 11/4/16.
//  Copyright © 2016 Annette Fontanilla. All rights reserved.
//

import UIKit
import CoreMotion
import CoreLocation



class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "flag3")!)
 //       donaldPic.image = donalds[0]
    }
    //POP UP ALERT
    @IBAction func buttonTapped(sender: AnyObject) {
        let alertController = UIAlertController(title: "iOScreator", message:
            "Hello, world!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        donaldPic.image = donalds[0]
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    var donalds = [UIImage(named: "donald3"), UIImage(named: "dt1"), UIImage(named: "dt3"),UIImage(named: "donald1")]
    var suit = [UIImage(named: "dtbody"), UIImage(named: "dtbody"), UIImage(named: "dtbody"), UIImage(named: "dtbody")]
    let message = ["Bing bing, bong bong, bing bing bing", "Is that all you got?", "Ohhhhh", "You are mad!"]
    
    @IBAction func rotatePic(sender: AnyObject) {
        changeDonald()
    }
    
    var hilary = [UIImage(named: "hilary")]
    var pageCount = 0 
    
    @IBOutlet weak var donaldPic: UIImageView!
    
    @IBOutlet weak var donaldSuit: UIImageView!
    @IBOutlet weak var donaldMessage: UILabel!
    @IBOutlet weak var readyToVote: UIButton!
    
    
    //FUNC TO CHANGE WORKOUT
    func changeDonald() {
        let firstRandomIndex = Int(arc4random_uniform(4))
        donaldPic.image = donalds[firstRandomIndex]
        
        donaldSuit.image = suit[firstRandomIndex]
        
        donaldMessage.text = message[firstRandomIndex]
        

        
    
    }
    
    
    //SHAKE FEATURE
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake {
            changeDonald()
        }
    }
    
    
    
    
}
