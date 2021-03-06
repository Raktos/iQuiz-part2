//
//  FinishViewController.swift
//  iQuiz
//
//  Created by iGuest on 11/10/15.
//  Copyright © 2015 Jason Ho. All rights reserved.
//

import UIKit

class FinishViewController: UIViewController {

    var correctNum = 0
    var currQuiz = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true

        // Do any additional setup after loading the view.
        
        finishedLabel.text = "Finished \(currQuiz)"
        numCorrectLabel.text = "You got \(correctNum) of 20 correct"
        
        if correctNum == 20 {
            descriptiveTextLabel.text = "Perfect!"
        } else if correctNum > 15 {
            descriptiveTextLabel.text = "Great Job!"
        } else if correctNum > 10 {
            descriptiveTextLabel.text = "Good Job!"
        } else {
            descriptiveTextLabel.text = "Maybe study more..."
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func nextPress(sender: UIButton) {
        performSegueWithIdentifier("backToSubjectsSegue", sender: nil)
    }
    @IBOutlet weak var finishedLabel: UILabel!
    @IBOutlet weak var numCorrectLabel: UILabel!
    @IBOutlet weak var descriptiveTextLabel: UILabel!
}
