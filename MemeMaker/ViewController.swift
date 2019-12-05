//
//  ViewController.swift
//  MemeMaker
//
//  Created by user on 03/12/2019.
//  Copyright © 2019 Artem Ulko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topCaptionsSegmentControl: UISegmentedControl!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomSegmentControl: UISegmentedControl!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    
    var topChoices = [CaptionOption]()
    var bottomChoices = [CaptionOption]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTopSegmentControl()
        configureBottomSegmentControl()
        configureSelectInitValues()
    }
    
    func configureSelectInitValues() {
        topCaptionsSegmentControl.selectedSegmentIndex = 0
        topLabel.text = topChoices.first?.text
        
        bottomSegmentControl.selectedSegmentIndex = 0
        bottomLabel.text = bottomChoices[0].text
        
        mainImageView.image = UIImage(named: "pic1")
    }
    
    func configureTopSegmentControl() {
        topCaptionsSegmentControl.removeAllSegments()
        let option1 = CaptionOption(emoji: "🕶", text: "You know what's cool?", fileName: "pic1")
        let option2 = CaptionOption(emoji: "💥", text: "You know what makes me mad?", fileName: "pic2")
        let option3 = CaptionOption(emoji: "💕", text: "You know what I love?", fileName: "pic3")
        topChoices = [option1, option2, option3]
        
        for choice in topChoices {
            topCaptionsSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
    }
    
    func configureBottomSegmentControl() {
        bottomSegmentControl.removeAllSegments()
        let option1 = CaptionOption(emoji: "🐯", text: "Cats wearing hats!", fileName: "pic1")
        let option2 = CaptionOption(emoji: "🐶", text: "Dogs carrying logs!", fileName: "pic2")
        let option3 = CaptionOption(emoji: "🐵", text: "Monkeys being funky!", fileName: "pic3")
        bottomChoices = [option1, option2, option3]
        
        for choice in bottomChoices {
            bottomSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
    }
    
    @IBAction func topSegmentValueChanged(_ sender: UISegmentedControl) {
        let curentChoice = topChoices[sender.selectedSegmentIndex]
        topLabel.text = curentChoice.text
        mainImageView.image = UIImage(named: curentChoice.fileName)
    }
    
    @IBAction func bottomSegmentValueChanged(_ sender: UISegmentedControl) {
        let curentChoice = bottomChoices[sender.selectedSegmentIndex]
        bottomLabel.text = curentChoice.text
    }
    
    


}


