//
//  ViewController.swift
//  Monster Quest
//
//  Created by Jonathan Cheth on 4/1/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var storyTextLabel: UILabel!
    
    @IBOutlet var choice1Button: UIButton!
    
    @IBOutlet var choice2Button: UIButton!
    
    var storyLogic = StoryLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func choicePressed(_ sender: UIButton) {
        storyLogic.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
    }
    
    func updateUI() {
        storyTextLabel.text = storyLogic.getStoryTitle()
        choice1Button.setTitle(storyLogic.getChoice1(), for: .normal)
        choice2Button.setTitle(storyLogic.getChoice2(), for: .normal)
    }
    
}

