//
//  ViewController.swift
//  emojiDictionary
//
//  Created by Jonathan Drouin on 11/19/17.
//  Copyright © 2017 Jonathan Drouin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var daTableView: UITableView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthyearLabel: UILabel!
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        daTableView.dataSource = self
        daTableView.delegate = self
        
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
      
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as!
            DefinitionViewController
        defVC.emoji = sender as! Emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😁"
        emoji1.birthYear = 2000
        emoji1.category = "Smiley"
        emoji1.definition = "Generic smiley dude, no pupper."
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😍"
        emoji2.birthYear = 2001
        emoji2.category = "Smiley"
        emoji2.definition = "Generic smiley dude, no pupper."
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😇"
        emoji3.birthYear = 2002
        emoji3.category = "Smiley"
        emoji3.definition = "Generic smiley dude, no pupper."
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😱"
        emoji4.birthYear = 2003
        emoji4.category = "Smiley"
        emoji4.definition = "Generic smiley dude, no pupper."
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐶"
        emoji5.birthYear = 2004
        emoji5.category = "Smiley"
        emoji5.definition = "Generic smiley dude, no pupper."
        
        return[emoji1, emoji2, emoji3, emoji4, emoji5]
    }


}

