//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceSelection(_ sender: UIButton) {
        storyBrain.selectDestination(sender.currentTitle!)
        updateUI()
    }
    
    func updateUI(){
        let storyData = storyBrain.getCurrentStory()
        
        storyLabel.text = storyData[0]
        choice1Button.setTitle(storyData[1], for: .normal)
        choice2Button.setTitle(storyData[2], for: .normal)
    }
}

