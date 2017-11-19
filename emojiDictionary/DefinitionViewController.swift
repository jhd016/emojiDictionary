//
//  DefinitionViewController.swift
//  emojiDictionary
//
//  Created by Jonathan Drouin on 11/19/17.
//  Copyright © 2017 Jonathan Drouin. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    emojiLabel.text = emoji
        
        if emoji == "😁" {
    definitionLabel.text = "Generic smiley dude, no pupper."}
        if emoji == "😍" {
            definitionLabel.text = "The emotion felt after seeing a cute pupper"}
        if emoji == "😇" {
            definitionLabel.text = "The emotion felt after petting a cute pupper"}
        if emoji == "😱" {
            definitionLabel.text = "The horror felt when you realize you don't own the cute pupper"}
        if emoji == "🐶" {
            definitionLabel.text = "A cute Puppers"}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
