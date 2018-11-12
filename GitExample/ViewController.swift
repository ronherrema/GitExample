//
//  ViewController.swift
//  GitExample
//
//  Created by R J Herrema on 11/11/2018.
//  Copyright © 2018 R J Herrema. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storyMaker = StoryMaker()

    override func viewDidLoad() {
        super.viewDidLoad()
        changeText()
       
    }

    @IBOutlet weak var story: UITextView!
    
    @IBOutlet weak var adjective: UIButton!
    @IBOutlet weak var verb: UIButton!
    @IBOutlet weak var noun: UIButton!
    @IBOutlet weak var the: UIButton!
    
    func changeText() {
        noun.setTitle(storyMaker.chooseNoun(), for: .normal)
        verb.setTitle(storyMaker.chooseVerb(), for: .normal)
        adjective.setTitle(storyMaker.chooseAdjective(), for: .normal)
    }
    
    @IBAction func sendText(_ sender: UIButton) {
        story.text = story.text! + " " + (sender.titleLabel?.text)!
        changeText()
    }
}

