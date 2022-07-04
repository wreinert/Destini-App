//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    @IBAction func choideMade(_ sender: UIButton) {
        let nextStory = storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI(storyNumber: storyBrain.storyNumber)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(storyNumber: storyBrain.storyNumber)
    }
    
    func updateUI(storyNumber: Int) {
        storyLabel.text = storyBrain.getStory(storyNumber: storyNumber)
        choice1Button.setTitle(storyBrain.getChoice1(storyNumber: storyNumber), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(storyNumber: storyNumber), for: .normal)
    }
}

