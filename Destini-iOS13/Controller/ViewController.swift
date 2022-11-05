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
        updateData()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(sender.currentTitle!)
        updateData()
    }
    
    func updateData() {
        let storyData = storyBrain.getData()
        storyLabel.text = storyData.title
        choice1Button.setTitle(storyData.choice1, for: .normal)
        choice2Button.setTitle(storyData.choice2, for: .normal)
        
        
    }
    
    
}

