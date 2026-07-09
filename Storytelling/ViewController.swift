//
//  ViewController.swift
//  Storytelling
//
//  Created by Le Gia Khanh on 7/7/26.
//

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()

    @IBOutlet weak var storyUILabel: UILabel!
    
    @IBOutlet weak var firstChoiceUIButton: UIButton!
    
    @IBOutlet weak var secondChoiceUIButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func choicePressed(_ sender: UIButton) {
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            sender.alpha = 1.0
        }
        
        storyBrain.nextStoryIndex(choice: sender.currentTitle!)
        Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    
    @objc func updateUI(){
        var story = storyBrain.getStory()
        var choices = storyBrain.getChoices()
        storyUILabel.text = story
        firstChoiceUIButton.setTitle(choices[0], for:.normal)
        secondChoiceUIButton.setTitle(choices[1], for:.normal)
    }
    
}

