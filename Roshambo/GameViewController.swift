//
//  GameViewController.swift
//  Roshambo
//
//  Created by Alp Eren Can on 29/07/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func randomPlay() -> Int {
        return Int(1 + arc4random() % 3)
    }
    

    @IBAction func playRock(sender: AnyObject) {
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        
        controller.computer = randomPlay()
        controller.player = 1
        navigationController?.pushViewController(controller, animated: true);
    }
    
    @IBAction func playPaper(sender: AnyObject) {
        performSegueWithIdentifier("playPaper", sender: sender)
        
    }
    
    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as! ResultViewController
        controller.computer = randomPlay()
        
        if segue.identifier == "playPaper" {
            controller.player = 2
        } else if segue.identifier == "playScissors" {
            controller.player = 3
        }

    }
}