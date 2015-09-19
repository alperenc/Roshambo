//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Alp Eren Can on 29/07/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var player: Int?
    var computer: Int?

    @IBOutlet weak var resultImageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayResults()
    }
    
    @IBAction func playAgain(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true);
    }
    
    func displayResults() {
        if player == 1 && computer == 2 {
            resultLabel.text = "Paper covers rock, you lose!"
            resultImageView.image = UIImage(named: "PaperCoversRock")
        } else if player == 1 && computer == 3 {
            resultLabel.text = "Rock crushes scissors, you win!"
            resultImageView.image = UIImage(named: "RockCrushesScissors")
        } else if player == 2 && computer == 1 {
            resultLabel.text = "Paper covers rock, you win!"
            resultImageView.image = UIImage(named: "PaperCoversRock")
        } else if player == 2 && computer == 3 {
            resultLabel.text = "Scissors cut paper, you loose!"
            resultImageView.image = UIImage(named: "ScissorsCutPaper")
        } else if player == 3 && computer == 1 {
            resultLabel.text = "Rock crushes scissors, you lose!"
            resultImageView.image = UIImage(named: "RockCrushesScissors")
        } else if player == 3 && computer == 2 {
            resultLabel.text = "Scissors cut paper, you win!"
            resultImageView.image = UIImage(named: "ScissorsCutPaper")
        } else {
            resultLabel.text = "It's a tie"
            resultImageView.image = UIImage(named: "itsATie")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
