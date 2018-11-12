//
//  StoryMaker.swift
//  GitExample
//
//  Created by R J Herrema on 11/11/2018.
//  Copyright © 2018 R J Herrema. All rights reserved.
//

import Foundation

class StoryMaker {
    var verbs: [String]
    var nouns: [String]
    var adjectives: [String]
    
    init() {
        verbs = ["ran", "walked", "kissed", "slept", "pushed", "attacked", "berated", "loved"]
        nouns = ["bird", "pig", "frog", "prince", "princess", "prime minister", "boy", "girl"]
        adjectives = ["little", "big", "beautiful", "mean", "pink", "liberal", "fat"]
        
    }
    
    func chooseNoun() -> String {
        let number = UInt32(nouns.count) - 1
        let noun = nouns[Int(arc4random_uniform(number))]
        return noun
    }
    
    func chooseVerb() -> String {
        let number = UInt32(verbs.count) - 1
        let verb = verbs[Int(arc4random_uniform(number))]
        return verb
    }
    
    func chooseAdjective() -> String {
        let number = UInt32(adjectives.count) - 1
        let adjective = adjectives[Int(arc4random_uniform(number))]
        return adjective
    }
    
    
    
    
    
}
